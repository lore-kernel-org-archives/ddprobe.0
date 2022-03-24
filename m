Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE291B93
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 09:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648113538;
	h=To:Subject:From:Message-Id:Date;
	bh=3FgihLbCZwYZp37EffwOjOvNjRuxxuxh3NJWf5Cmo1s=;
	b=NUOeh10BlLYMPAWKqcBSfMvIWZQMpd9GkzI3peWUjMNxn/MMluQGMc3myzIGZ6Nk
	WSKsnN3HkVgrE7u2irK4QhoOv2giXW3uYoJuqREDgyT3APPQH0uKRreXTVdArfwkL6S
	z9ITPEyhjtRIPeBjrUuy4WpFhMXsjpVIWon3luc0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648113538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3FgihLbCZwYZp37EffwOjOvNjRuxxuxh3NJWf5Cmo1s=;
	b=eExrPVFCQvsVpXlEWW1xwYNV2yVhTnDUXeCbUFGJ3v2bJtKaH8S8AHc5bmMGaGTp
	Ygyayz0/t8ahDKMy325u6dewMM61jluDSp94UYHh0GyBy/djxfiP8dfqusP6u+AwRgJ
	kjSUJZRajN+MrxIYHpb/Aqjbv3hg0JLfJu7xy8qo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb38d527-aa437b82-a095-43dd-8e06-6a91a74aee2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef065cd00805978f8f7d870ae256b87beb983bdf67bf3a8ca76d2d66b89348dd
Date: Thu, 24 Mar 2022 09:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648113538
