Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B97B20FC
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 08:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653984659;
	h=To:Subject:From:Message-Id:Date;
	bh=YIxltLYN2wlQ9D2h9ecpun8IL7XOPIwiQ1wPPZeUXto=;
	b=j+KwsYFn/RF+jDhMzB/LdlKaNYVHTTRVGd5HwpXtVdRm7E2Sue/CNJoLUBrK9R87
	HUbeWqnqWpWAPTRv3GcwI0GLMX1ZGDLN7pn1TnuJSWQWhlJWtbe5JKl6PxuEA0sNZbV
	jCaTSAB1ey6aTTktZEg3HucO1YNoTxnB9tJ2vxYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653984659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YIxltLYN2wlQ9D2h9ecpun8IL7XOPIwiQ1wPPZeUXto=;
	b=gbGl6z8zRX9jLNyWv7gvG6Gpir3rk8GYqrTDGnGKq5BlsuZG7BJbPR/i7HuuNUor
	ZdIhDKGZwmSkgfE2R70O/s1lnH+bSuJ5XOB6n/FtpfzfGHw3PXyUyhvTt7+tGQJN7MI
	yyf8zNXX+/yltdllU7lESt74yAyQthrvRhFRfvM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181192b0709-40667c61-f8c1-47ad-bca8-430c2fa43524-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9193415108acdae03fe3061f341e84bdf6d45bb97ff9ea39cfd4548b4cb8c40
Date: Tue, 31 May 2022 08:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653984659
