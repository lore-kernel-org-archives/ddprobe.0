Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00509362
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658019412;
	h=To:Subject:From:Message-Id:Date;
	bh=aQqIuZj/FbzGG/ZBdtbp9eklprGHu4WJauUxERtwVaY=;
	b=O9RWE15MnCd2HJPt0CmAwIKmuH0aR7XVN86yqKrJqok6oCsQxRh5OZ0yKKPYqyXK
	0TshlGk5aLpWt6h2lVg5TLOxVwCcyUdpQRuTGrzCw0GqYddXBTn3P2S2NWtjARHHOla
	TjmKMul2GtLrzwjhfARRwz0IUr3RKh1Vd2FbM1IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658019412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aQqIuZj/FbzGG/ZBdtbp9eklprGHu4WJauUxERtwVaY=;
	b=Z1z/wwV1q0EnJZm7DpjXpWsCwdBqilEgjEljPgGrFecwaxZxYBopH174z/Y1Mt+S
	Qg8C+349ixVBWoO/rfBCBIK08DTu0H4Am0c2JJKOsPWGZJx+qjqdRZICCJLzHzWarT5
	x4yEPaEzUhGmyjKXvSNlOcyTCn25mnvpwHVACE6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018209a87959-b0cf3d1c-f84a-4597-92ca-4ee24e19564f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0ecf254c6ee5061c971055b06ead1bdccf4f68a196a567fb1d7895d9cadcbd8
Date: Sun, 17 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658019412
