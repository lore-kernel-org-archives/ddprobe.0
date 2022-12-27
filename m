Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6F5620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91540C433F0
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672183887;
	bh=i+O0zVsnD1i1VUGBIqetI2rmatecdxwR7zVwmzRbdRE=;
	h=To:Subject:From:Date:From;
	b=rZSXAob2IE4qTKuTVxjqPEZJdaT7pHRmCCymbZc8hJshuPYqriz6dvLgnydaS1Grz
	 6uIqulOgNgnuxKmqgiWun2tw13HU5cl4P+bTherecT2jcZQCx65YM+IbxHVH7EnWbk
	 5DVoRizPO3eqWOeo9PbzPy+2+kcJ59lKJLawq81Q8JsIZYrHc/TTuLh65x6thuvFqx
	 /QM9h4EfBdR1jxzoQDJGM+wMkDHyV68SG5AGsmKEp91cYZbiqgIBzgihglSuYHVXMX
	 txGb2Irh0AgAbZpW2ASL2ZDYLWJPm3b2ZGWXQ9mPs6kBFj9I72+xFvX5TbzIRAMfkl
	 +YPpVuNr7ji/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 717F5C10F1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218388743.21327.8914717702482733352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2046a73ef8a63a339cb8540ae56e6a2f054e927dd3d06fbfe8cb8d1523dda0
Date: Tue, 27 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672183887
