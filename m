Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55736A23
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661265052;
	h=To:Subject:From:Message-Id:Date;
	bh=lSEuRBZLmyAd7ILx29+X3uofa7V7xzUaWlsBV8yEM40=;
	b=hamN1Q51ACdMTuaVLyyXaQFZIkhN/Ddm3fiKODw1W698BtkMy0awYlI5lk7RMD6A
	n5qte+P0qFi/Hw7O99yQfQZ5iHi0CjlVDQ3FmngtoSk27vZH3WR9HNuurxq+GK7S8Hm
	1z5Tm7b0MlzkuGvYx9cPY7fFGG4suaVTEqqr9uWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661265052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lSEuRBZLmyAd7ILx29+X3uofa7V7xzUaWlsBV8yEM40=;
	b=U0YtTonJcm9sppXSeS7MkEOBT+XSHbyvT/RHAEMVYVTSdmaPkIsBzcRxCNiYhRvr
	bxAci22WQLgNVjl+8tMm7sICFjUh19jzyo8yIDownqP/qVkrSG0rAfbAnrtSYWdQMWt
	9vNtQAKbmNdjrRka8I12M+hh02Gu3Ar2VfacqhfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb1d0389-f6c7117c-94a3-489e-ae8f-3f7110fe923a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e65b0f2c2695aa2d8edfc1f6586006e1cc49ead99d99b0d4c5898afa4ce623b8
Date: Tue, 23 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661265052
