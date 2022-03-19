Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FB57A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647662484;
	h=To:Subject:From:Message-Id:Date;
	bh=7z4OLcjqSvoSPal9EPv7dAn1XxxoQ/Jb2tGe70t4rf4=;
	b=MRhxfb/AGNQhsgFUefJBr0JTbCncE8xu3dAqf3lTGEzMdbuZuf3TEVkGwD5r82ht
	TDY450PTmtxuWt+dt1MgceRTA8ZYA2leg5r3qB7tyg0BswWXUfUZ4oIyltsaeBjUxWA
	PbvMAlM0RCFJVpEmSvOvKolx1WL8248hLX0hN1pI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647662484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7z4OLcjqSvoSPal9EPv7dAn1XxxoQ/Jb2tGe70t4rf4=;
	b=ON1C8uwrzdz/OF+jckWSGiNUpUxpvh0Yn21YULKR3c7Fsr0tAAKT+H8IlpGXQrMi
	dljERQJL0R6AilSPmyoO/ly/CAgCGmnwL5ojGpd30RpcaRovBQBI/dJQB7MvRXF/CxW
	bAR5mg176oSEXdFysQy3twsl5LS4ajkI36FC7S8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0564d28-00cf7d20-38f8-4a51-be7e-36f51e44ea48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10b4419ffa1fb32709a264f5d9a8fa228cb8f7f4a76a73c4a90ea5ab040a91f8
Date: Sat, 19 Mar 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647662484
