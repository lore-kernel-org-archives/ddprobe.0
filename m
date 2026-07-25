Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBE217A303
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785019834; cv=none; b=GSb+0Z+8fH+T3cRlJu/v5yJgxWMXbOvQ0J1p4bxHTFFZ56lm5mNwWH9sZmDhLRT+4Hwplyu+apQUj/tjWOdkkOMLx6/AeLtV3Y9N8S9rtn+V/9JQhDjoaVSvMHbSkdRPGcznrWRFRxw0/HtGPmE+b/aYAYivpwiqXLMYYBQPL6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785019834; c=relaxed/simple;
	bh=M2rioXXyfsQf3bCYV/S8La3gg12I1WL1Xv4FRLrGi3M=;
	h=To:Subject:From:Message-Id:Date; b=nVI1x5EAA1/ZSvnyhf/jUVR9TBNnjSYTJp9GsIV23cVF4NZrmhieJ4Id2Jpo7Tws3t04iGxCQnzxUTby1S3SeterfQzHOGbeSo38JA+ATy4ViOcICF+cVlGLwDLo9IZrLs/W1l4Gmb+w/JBCuPR0LA7AJSTIve0KTOYrIgg9jhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pol29OBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pol29OBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D172AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785019833;
	bh=M2rioXXyfsQf3bCYV/S8La3gg12I1WL1Xv4FRLrGi3M=;
	h=To:Subject:From:Date:From;
	b=Pol29OBX8Tmjf881XdF4DnKAa4HkilWOt3DqcEliMj1xJ8nz24NC8uFr66BMaS6yx
	 JgIUypU+bVPLh8fW+Nymiw18do++rc+qnXUMenxFk8hu5UdE9Y/WxSkQ+WHiqaAlX6
	 vi2WT45L+r/F/VQPUB/qXGq5Rh+UJkmXJb4mle2PgyWTJ+q+A2vC3O0CLMqnp084mf
	 lRrFOxJiGXuLf6QACY9ZbUvIhj8PwvJIq0JNm6Do3+1HwGcYmbX+VjbfS1CdosdJ5Q
	 +lzrcaO7Cl5Oj7OK/gkqacy7zfOSsFgQkWLqQR9QkM8jfhHDFdFRB9jyhXhgg6wx9n
	 t4iWDFxh6dhYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE124C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501983368.15617.534524284710717403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b66c5dc509429f10ed72726cd2f99704cbbe1c4b26ea3f5ac77efa2d3a923bf
Date: Sat, 25 Jul 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785019833
