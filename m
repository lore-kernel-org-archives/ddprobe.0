Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC051E5B9A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775938654; cv=none; b=E7btDM4t8eT7ilh0OJYtaqZqv4rp0R+Zki6CgeKOit2blOm1ELs6Xk+cp2jYs/6joa2Ds+djJO1vX4NTqTOPyeKMkIjNq7EyZjq2AOxljs888wJ716+y8+w5DdThhtzEb3F0+cetrOH2op/AJNKA4psJlkc2G8P36x525o0g7G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775938654; c=relaxed/simple;
	bh=2Uit5nM2txPGQxfbdGuQMk4KZfHKWwQ5GV+KOOIVNAA=;
	h=To:Subject:From:Message-Id:Date; b=p4N2s14oEL9PTit1ss9seHsjbTWoSMUX/oWea4Ho7oeJU5p6ojVEczJm9BVOX7dx2vfbZPtVy4kxkRp6yXp2ybMSXbpBb+6EsjAlc78pqG9OT/xd4eZmWe6OGekAIXSJaCTHZdKYpgcNjUYy7/5vWYYIPJCEID+GeZ/wvX1qyQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM9p1KwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM9p1KwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9891C116C6
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775938653;
	bh=2Uit5nM2txPGQxfbdGuQMk4KZfHKWwQ5GV+KOOIVNAA=;
	h=To:Subject:From:Date:From;
	b=dM9p1KwZXUKQJg5QDJ89Llc0qrdFXQ30EgA/3Yc71AfB2EHPmjZUGi95hZWdljaWM
	 OAk4sw2U9bWILrDGfi1T5MigEAYfQ/SGssYWYMQPOEMwDe2S7yZupshulwUzxSULQQ
	 B4mIfkBCZFD9IJ+v+vRgyTyCLr011SghTGLDE/fHSqK9k30yVCbpx4PmN6Q9B0eRyb
	 qSDpgKVeYNi75OpGc+EViXQgRIux6uPvUqnW88ur9rG/zxOGYAHyq+VVAAS9rsk4B/
	 qyn+rlC/vt19yfHq5/aB8qOQxEu77ra0Krw8Av01tud034tQWHc0WJ56ZZ3v7cEAKM
	 jDA4sLqdV0t9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5366F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593865370.20897.5111839953084911946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44fff73d53749408a1ff507a4d239695a17306351c216e8a4746ec20701b229f
Date: Sat, 11 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775938653
