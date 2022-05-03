Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03B1D17E9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 06:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651560898;
	h=To:Subject:From:Message-Id:Date;
	bh=GEhHU8jTzwV3kFyKAaBVv4dRc7yLwVKWkybJoSTxxl8=;
	b=KReILllMZQOTjyEhFxGgh00iidU+JU2eFVvOnLu9UQYb+ASb+75PJ6kwnuEPZJoQ
	ERduTH3uxBCSVZ7NxsWLujVyhVgp02TUoha1rzVt7da3gYjhruPeBjyQmLf2uH42Xpc
	sMbUvpZxG5dvsW/VVMGu7ksBW3sictvl3/E+13C8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651560898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GEhHU8jTzwV3kFyKAaBVv4dRc7yLwVKWkybJoSTxxl8=;
	b=Qr4Ew6cR9GMsRxRbM/LXzoK6eSTHaDfSdikUNU9D5HwJ2vyDSFRjr6it1A/+CklN
	F8LaDnchnwulOkEI4gUV81qs16zxu7Nh3PlJLoAvA0dgVD2dnEkZsnH5E9ZCKNFAqsD
	uvLKEdc4lDRE4MJq1s71CRmeZgJ68YTlL0SisaZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018088b35ed9-f028c894-c57a-4e72-90ce-426496621384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6318550089032ae1a260b9d7be4210f5be172d7c874457abebfcd9a01c9348b
Date: Tue, 3 May 2022 06:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651560898
