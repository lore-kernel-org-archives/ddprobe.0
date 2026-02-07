Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167F31D6193
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770462234; cv=none; b=Q4NO5qwNLk3L3g3Y0gjFmedtIyTLzVQZcsSd9WgW8PDiw8pIQa3Aqqi51w/MoAaK+7wXhAB5E1ZyCpQ1MPBzhu3R0IOSdohxNMXP9CUSw49vrqfwnwsWFUziABIuwMhzaUf0ULs2BZseMqXmZa1jXhvu7/jEP5BtKFwTdtQPUTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770462234; c=relaxed/simple;
	bh=/S4B9OJ47Q0S3MQpl+G4REx5+8HEnzvbp28SdG8B/TY=;
	h=To:Subject:From:Message-Id:Date; b=py+Hd5gA/Ei88Q72bDxKvFzPZKI5mxMMrXK3dEDHYzPCXs9fuJMRRQSguZMsecq/cAGdoNhSmL7BS6MS5fPDdYRma2QPy2y3HXTAb6wtrAOtY5JK/79N79DjMyGMxj0xNv1yVLXzInAx63RR1VXRfmHxG3NDrh6fRdjO67dTuFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA+oOQ5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA+oOQ5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36A0C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462233;
	bh=/S4B9OJ47Q0S3MQpl+G4REx5+8HEnzvbp28SdG8B/TY=;
	h=To:Subject:From:Date:From;
	b=sA+oOQ5VAtKjTAXabQ5ARHzrjYIz7iYosySi8x/cf62OzN+2Ej29IXWBHv4fDjUz6
	 ktjXQuSvfWKBjXVFhLZi8MWPGcy+S2gTRDZVv/NwpAPAfJj8vm0BAdtK+Zg30viePq
	 pkS6v63MnS8zl9pmBzg1J3X2JWApywnFJn4BKNwUKpc0SLonBJEu4t4+04sP9ApnQn
	 wmyoE63iICszRMwULooZCauhNlZTflsm8X73ue0/aTE3KQGY786CKB6llXJUVQ0/aZ
	 fWhcoeVUsUhR6C9Ix7eJMZUil/J8mEKSBo9BVypgEW/sK+VS6QVn0VSVvY0b5pFB33
	 b0Jb7k9HtbxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C9EE0AC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046223358.8504.15405554844751199623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95851b1e93c4107e3d2a9dad74b5a69a56d498d8687a01fc4c23aef895f3929
Date: Sat, 07 Feb 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770462233
