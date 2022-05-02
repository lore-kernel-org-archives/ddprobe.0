Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CAF417D3
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 10:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651489198;
	h=To:Subject:From:Message-Id:Date;
	bh=uNsNcTiEE+x5vdiWwX7NlixYrKYRIzXIJWHJG25Jqr4=;
	b=NB53xhuGzVQhyrZ6YT5pk7KC5wRm0I/3Nz+ugfk4dEBq+P5HdiQ3aqEj+ANgnLg3
	zAO/VOAaTu/GwsuX7M6KDJ85CodPRu++zWICs7lh0U/PK7/nM8sm83prjGSHG6z5yzY
	WByKN8vPSoE3az7RyEQpkRRoIcE8Zw83H73R0TJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651489198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNsNcTiEE+x5vdiWwX7NlixYrKYRIzXIJWHJG25Jqr4=;
	b=SloAaxgq+ZfS27mszeSjiAIfr4Qo9zfKLUmazABO+uNUMlsHpM3clp459170edIp
	DskT8pfvg4dJPr/GQ4UoRkGqzC55fx7WNmB8QCbOnt2TTmB7MOx1Hp86efOohaQApc/
	TWH4iwEaGTnNqUs3TYVFw9I68zlC/j6nbucpy6C4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180846d50d0-f159ffb8-d238-47b7-9c09-ad4b51bc0d31-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3799f534f7de1502436bce08332f6b4988af9158edd605df2c8688ced6f081f
Date: Mon, 2 May 2022 10:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651489197
