Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271C929E11D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775586334; cv=none; b=bPt+YlAFcyR4dP1l085VZC5WcKyK+8bgWpE6q+NRICmutWGJ/7mnsghhwyu2gG8JQ6HVXdpRWa/JuAG4EnMfPw0WJvM5wcfPhLutRLsZce3NjUgDjAWYE2D7gaTmWBNW1tcsmXArkXPPZxgSnoxTWQwqL/R4g2DFkLJGdl7wIN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775586334; c=relaxed/simple;
	bh=Ody9xzM8K5ffqkFXXJZ6c6mis6pu8TI9RbDHzP33sTg=;
	h=To:Subject:From:Message-Id:Date; b=pYVrYxUz7ytGJeYZ2puL0ptIbU3MjmwjsthDrGQHeEmCMh9qz9OIuq0+yMEuYZUn1oE5A4UyGX4kk7LtJCGeHDLMMB/pApx63EW1NC9vA0bufNbqJ5ZnT2wmn9uCPfUoEFunK0iGbJudIDt5h4MyYjf91XXcbmLdtJGM+XKseXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G5rZ7a1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G5rZ7a1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1393C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775586333;
	bh=Ody9xzM8K5ffqkFXXJZ6c6mis6pu8TI9RbDHzP33sTg=;
	h=To:Subject:From:Date:From;
	b=G5rZ7a1OPAmF/RY2NtDkqOBzXP2Rqd+2TsyY3DG0Ate4sizB8Pb4UBQAHY68zMgF6
	 xNAp0kLXuNFhXSHGJkfxw796/1/uleQ+qAX/um8nnfh6jvDkOZ0jVxHT9ELQgz1ov0
	 F7WIFEjdLGCoof/7Wxbg2Vv8U5fMO37fq8PYdUDErsH/eRLKNy/gi7CHQJOwrfhuzi
	 3xLo6YECQqhhp2rzfoUOccU9FlsBWbAxwI5mtvlIbjiZBdS7bdgpsdwKRWyILCldTP
	 Q5hewzePvW66qdoKqSvB/TAjiU84DJ1sDtXNHjXR5kNqK642uQ1yOAzdQNA7az/I8F
	 d+kp8rBdIt5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C3FF510E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558633368.17191.6938983158594517292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63cb0739252564481b8d2c5fda62cbcfafcb47dce288024288c557643acd969
Date: Tue, 07 Apr 2026 18:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775586333
