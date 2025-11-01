Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AFBC2EA
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762013994; cv=none; b=qBBIm+JJ7iU3wg0zqnqSuLtKlDC3X4zgiy6EC8NP7vXAJJLfZOc1xb83jvSRUdu9gWMpNsqqVW9j/bkbeBsYMDffgEDJaeHqBGTRU1kzfAww7HqwuF995jz3KsuF8UYwIQonW/TKmMhhjdWdreGX5P8MDcLJeL2kR4rEuINhIeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762013994; c=relaxed/simple;
	bh=Oqo8hJ9DzxNAdo/6NnRJuSlOy1q8WztrdWhF4ug4Qso=;
	h=To:Subject:From:Message-Id:Date; b=Yx4HUQcvXtBF/8VaDouDlUOza1lZVfpcVBGd6rQ2hg3uc1mMyWoo/7MmxDkFLY5OHXGS9jK1U1sfADaauktG/5hJEuwuMI7ZzDH9/LE8/gCL+Y8jP6FJOL8kKTqd2W5YaGNiuSryqscqhSLYMo9dLkdqbSYh68t1TGrZFPnTLJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWwE/HFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWwE/HFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762013993;
	bh=Oqo8hJ9DzxNAdo/6NnRJuSlOy1q8WztrdWhF4ug4Qso=;
	h=To:Subject:From:Date:From;
	b=ZWwE/HFo5waxR1a24fcUVUwXNPdgh8YQiuDlhDZs69wsFfUSANBYJXyaypzWB5zxl
	 GoKeD632HV9gI3aIxBmWmM8H8NVJXXh0kk8snGb1RKrsJ9e7XYtpZpxOqDH/r2Cx5t
	 JepNcCwUjXQZ1OCQMInW+X5HgSVakRcNi1x3PzFFxkhchcrmYCyTwpFdr3qF6Li5o+
	 gGB2ExsKj/iw5QPxOHTAmXiVKiq96pIZ3mzKXE7s8NHOZX6cFs1vZ+IJr/MQxj/IB6
	 OjFRgDmUEGXSfR6TPmglynyUDrIRFjAgcqGU03y+zXkhyB/VsZaosK22MWKAq9JUdb
	 WAouIYUpLozRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBFCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201399358.18558.100111138634430619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcff695a51f65e3b603682e4a376c652b5ba29653dc2594c622cafed9282bf47
Date: Sat, 01 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762013993
