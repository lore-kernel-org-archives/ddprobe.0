Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267717C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656133612;
	h=To:Subject:From:Message-Id:Date;
	bh=fY9u3u1qNypY7c0yiqSVpHGF9ScRrYigPzKl2KGCR/A=;
	b=R2iTLNeC3GVhm7lNkNw80omvG8sAbzLXKZmYIMD+cmvPzmhmbU+5IBc7hS8qqwkl
	rgcVCqlQzzRsb9hK14HbuP1AOl+PKE3hh/z7y6vyk7+e5Y6/Egb+91NE76ONmjVJ7xQ
	0LK6qJaxVA4U6KR6Zfta91CM2esZvr/haaj9QJK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656133612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fY9u3u1qNypY7c0yiqSVpHGF9ScRrYigPzKl2KGCR/A=;
	b=X6k2yNJg9emSZNwUSX/32I8P/NSfqatXqfZjjK2HBJ65bxli4ZgpOt9XLxkF+80j
	Kbupe+b0NQA4kQhZckUBS6cj/zVQRzETy+yhT+QxftYEIzu8Tg+trmh1pwinQ6aoGeq
	sb915UGdds25n1gaB7MSWLRD0Nz6ikMT38Tye8SY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199417313-9fc8caa2-1a5b-46c1-8a9c-85a2c63a4bce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f740b7daa20f8f0039e972fffaf0fc0084c0da4a073c53d7b1747a02f74ede43
Date: Sat, 25 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656133612
