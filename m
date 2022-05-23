Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004E27C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 11:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653303779;
	h=To:Subject:From:Message-Id:Date;
	bh=2sapVd9TG9kIdwnIA0S+nFR75LJKXk9F0MDLDibbMAA=;
	b=NVQCr3Hs3TlP6W9AIizu6AIt9VTwTaUdrCxu0FBWfKOeoZCHyptAWFXBr9dqqVCI
	F+Y8T2/NZXZ0KbxMsiLlsIodYqpopD2vn21kQpQQvUGsibKB3blIEtbwd42E6+MQ/es
	rgrv0afAYy9/T4f7eZ8PWtXrBdIvgFpyy7pBG/KY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653303779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2sapVd9TG9kIdwnIA0S+nFR75LJKXk9F0MDLDibbMAA=;
	b=eMTHuL1lMQhshRSdyHr9gWnP5yDUxULDuMaGGOODuWsetLGTuag7PhEn9qvUUu5h
	bqdXf4jaJc96xvQasxzfueOkw3C7EK+dd1BiwLobBrCLYPAyo1qy1znMYCKC7C7ZBuM
	GCPoyNBU6Dtmf/t/Mh3MKw7HVdVVFl0LnO5xdLU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f0959fa7-545a81fc-a3dd-42bf-abed-5cbef4ad84da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9e9231a1aae92868067e46be0ec376e4327f3dabbbecc69adaa3423b019d4f2
Date: Mon, 23 May 2022 11:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653303779
