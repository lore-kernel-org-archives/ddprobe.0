Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5D1BA40
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7qe49/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C89FFC433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696832828;
	bh=mJIaP5mGToYbPFesbncHh3PDKzsC48/SV5fcaf0f2nk=;
	h=To:Subject:From:Date:From;
	b=K7qe49/Vw4jrHdyaerisua3St5GQltGDJZ/JVcudTBM/WB539cc/+CJwzVtn4ujTa
	 RnU9AVg5JB1QIz1e24MID69hBdQK3/M9Qj9AVKqtDfjccj33JDKrLBzaeS9xjXQ5AW
	 OC0vaCuWMbmfcty4de4eKWWIEjMBHhCd9crIetXe1DF7zdCTEj2T2t6HsdOeh5niUH
	 S1d/hFe6LMiFBRVSuYqSciGd/+mg/GSU/rGj0V6rYe36kAWbKFshNb/BoW+DVIEwJF
	 9FiSl0Oj/Z8CkqkBdBv5LuNOrK5JKXYNDjgKUXyfemUkJLJDjF3ZTkI3iNI7W/ctrE
	 ARfdtmbZPVdNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4B8E95A8D
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 06:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169683282869.1112.14873952614389388567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6abc069b8e447a123177266e6b42b8fd5cca45edf1499e7113b8e57a40f16c90
Date: Mon, 09 Oct 2023 06:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696832828
