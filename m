Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CCD130E58
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750687794; cv=none; b=SrI1d2sBp9Uo0H9dPLWSZIghqbrg5O4hBg5/RSv3eCRLPRkuYOlk3tOF6eA8xEbNNcMLA/hJeEWB7CSGbF9RhXzcCthmFu10w40anO3TSqQO76uKU1J9bNjNd6MVftnH313tEbKotww2ETZYTfNd6Fu7b8Wah0OI6XqKHS8QZnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750687794; c=relaxed/simple;
	bh=b5vF1lxK2hha7gUP1yBVEnTy+Ddp6YJowStJZ7fGNbw=;
	h=To:Subject:From:Message-Id:Date; b=l5bq9OBjW9rXndNnRqUJVetRFDElyc+Za5SOvktgHA7NUI7FR2R8uFbull7pKmG7pIEvkjtM/2/Rpojm7HGgIm5CxSjaQZLmIzoYTefXSbFfkijthw4ZVUjr8F6n8c3XYlZ5osI7xfR2BEgTDpBIsOj7bp+gov3W/YdGtfKnBTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBjoB7kI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBjoB7kI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6FC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750687793;
	bh=b5vF1lxK2hha7gUP1yBVEnTy+Ddp6YJowStJZ7fGNbw=;
	h=To:Subject:From:Date:From;
	b=RBjoB7kIWNaVmRLOEW/ksAIe+KhjN3Za1yjnwuIXRqjJwqMukmbrDPEFccX096fQ1
	 XhVKiZsD1hl4VH6yg6uWrgQ41qPiyFQy+7CXuCRxS8uV+5zIVCY4xMiNVDUCjcQ3iK
	 Fu8yFUt/Nm7ij0edAF1karHh5ylm9T5nHb90B+qnnB9AdmXfQaGmWkivwrD2UpDtUy
	 PF837pQDW+Kfm8TfGHgrP3sY/1OcsqhDiBKqAqMVkwTR5ZPPHGFgXBYpz922P2g1rN
	 TMSO2za/Pzc7/JJmC8U6L9k/p7FVG3Df5CwpUjwvQXpcvZYDonn9xaSK4VOlLiMvs4
	 /QIUTYr9LVKJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94406C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068779360.8158.1415075485608014691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6149fa805d28336d323dd8cf9ac12dd6dfc4a800056c611003c3a638f013cbdf
Date: Mon, 23 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750687793
