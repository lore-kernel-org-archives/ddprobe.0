Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2464F2568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 15:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651764418;
	h=To:Subject:From:Message-Id:Date;
	bh=+QY7LULzN/txbSk0f3yEnL2hVf/HsDWEnj4+3aMGZcE=;
	b=QhZ6yzn5/+p6J5ybl5vIEbTnONypMG4zukJbIuO6p6KXN3+8TwPtP7TP/AL8y0+N
	Gl5tuXtwVyNC5R+tTvsjP4gtC81Wx8Y9maptPDbjSdKv/ylFx8nNv4w9MKY69+Iilfb
	YO/TdUbazEtMv9t8j9Y7ekr+JoMGLsYhaYMctN3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651764418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+QY7LULzN/txbSk0f3yEnL2hVf/HsDWEnj4+3aMGZcE=;
	b=FpsvDRGf8Frv9N8Rtb84AeiG9gPWtFJIHy6SnrRVNKLnSOxsFiaKo8N1lQPZgxSP
	0eWZ6AZ89U9y94KzyFTpMOIvQIFdHkoUyv8euRN+EQ4CECLG2ZuzaNIstuG2jv2fUcZ
	VSrX8GINesRqxJN3ixiL2KlO+tlVmGS1hkk+GSZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018094d4d74b-ee3790a8-830d-45a4-8bfd-b3e3b1f4e783-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdffa6eb8672e6243d39569631c5c519ced9c612e61bdf08117e3dde78e58179
Date: Thu, 5 May 2022 15:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651764418
