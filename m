Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EFF17E7
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 23:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648508578;
	h=To:Subject:From:Message-Id:Date;
	bh=3ooemvEdQrp2XDMOGyzPb5+vw3yiBH9299fgkowfE7M=;
	b=jswnOoIof6/zjlsUlAEHnN+dBboMX5AEGnoOV1PqyotCqSKMk6B4D0TkAKXZjBKd
	sOW4cHjqQlWSAP4Ji0dqLVLQJKcohjKCANkglYMsmp7jyTth42kLAOH5XRQ4bC/byVA
	8ARly0chsPn2FoL3j/ubpGEqu0Hry5baE1l6xhd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648508578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ooemvEdQrp2XDMOGyzPb5+vw3yiBH9299fgkowfE7M=;
	b=FVlaCmkUlbef3GB4q30poeJgDBoXd4gzOSNnwpX2ZjqOkVo4JjrsKn1c3b3TkFQE
	S+9xL0SsxZFsGI0iWXjCXTwJNBSsa2LIJIjznN2OH531nbh9CHVrQRs1Fb8l8h3Yhol
	DIuVGr/NUh5ELkHubqcz3B4iR63Sq6oCf63lkr1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd2c4a9dd-e6912392-1fef-4c73-8924-347b75b2f749-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e49f03963276c0dda2f9792cda7ac2b9c5ef41a9a290a0cd7a3004605ab7b6d6
Date: Mon, 28 Mar 2022 23:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648508578
