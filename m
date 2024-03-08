Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9A557332
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709900297; cv=none; b=CKhZgsNYZhy9Vp35px1AEzcRz/8xqy2AgqfH7SV419ADKZxcB6tHSByQKYk0H9nrDWoUsLmwamh7pUYX+zdpjhFzP7jrdHpZQTnpbMtrNciCUvBrIBsNlfWbrRQdlo+l5FCUjZ+k5NboOi26nPuNmm2dGvVM5obbr3x1Q1nr0Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709900297; c=relaxed/simple;
	bh=HVJpgjHVeQwBiKmAp00s9aXxQeqXNqvHxsB7PoFf4uo=;
	h=To:Subject:From:Message-Id:Date; b=aQb3NpUm/W/hvzvPn2MPtbapxr/WNGYKH7xryybdqEa6I+cUDXONVCd5RXT6TtL7XRDwj3qtsLvTA7zX4JnCMluNy1g7/8zGrxijYCHR2Vz3OumzvUK91pXqeWJ2TvapakRoIZP5k7km3f34oz80BVia0pPqY7Newvvb17roBcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1OLAhBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1OLAhBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC99C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709900296;
	bh=HVJpgjHVeQwBiKmAp00s9aXxQeqXNqvHxsB7PoFf4uo=;
	h=To:Subject:From:Date:From;
	b=l1OLAhBpE/RbJDtFtvs4c/XbS3DZim3V70b2IwwoAYPbY1Y9F0RHvb5pCfOUllDN4
	 AL6l2u9Vn60QEcM4UQm4cMoiaaY0Bv38IRMJ/DcK0a82dvWswAknXDQ7N75/57y8AY
	 nR4cAMGtmkBlhcnSDgU/la3t6LSsBJGvzlUSS5bBGm+RE/pCXMfTeJKCSOge3z/fGM
	 GzTaGOGKYQP+pochQjusLbxfYOB0s/QozE+b/VzXvDIcyJ+LfXgm5Xni98EVZpTzed
	 Uyw+UJEb/DXpEgdVtLBNI2gfhKqtfnHV096dSqxwVTjBcl3rR1q0ctzIPDtTiLo60n
	 eYJ2K2/0bdBag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6019FC54E4A
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170990029638.26738.10173952690860812448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04db08a858edb00156043a348112cdefb490ce75483e192d2748571b3b228067
Date: Fri, 08 Mar 2024 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709900296
