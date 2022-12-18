Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73342CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81650C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671389487;
	bh=hk5QIwcEAumf1MaeR4eatK0FvCG5IxyJQLzbprPuSuE=;
	h=To:Subject:From:Date:From;
	b=MvROKnqHR6ARV3/GI/vNucxCB2/cFLz2Q7K/fa9EXFn7E1VdFv3iRUtHk9nXYIHtO
	 TB2tApMqFhcQMrARUsLaq67eYXlZCuNvWoS85vrTIMdlbAzYleZCwCNxglvOP3BZIv
	 9eWWBDaqLNgmXdXKS86wDjicYAPz8aJYVFjAvME3+BoFAYN2QqklYbd0897FqD7Vup
	 fg0vpEFZZcsdGvftnpRAaJV8xZCAHOVcs3xOa8NT7h3fnuUnpJaNgJaJ1SIDeJDqEg
	 gA0Vgf0le+48Vs2btjo/A9mHfDz31NhbyLlj5e5GZ+8eWEyHw48LylYkwWvQuHpBq7
	 fnZInd4r6VYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67049C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138948738.10222.17760967638717840355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9308c87bd26daca7298614a09bcccdd32e89713a7e1f56c84bc39e656c7282d
Date: Sun, 18 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671389487
