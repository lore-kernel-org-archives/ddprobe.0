Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30584964F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786765834; cv=none; b=u/uNnWc4ycLZa+rVT+cexZkUpQr4gGJdhIYEH5+E8siu2J0GUffFPKGhVBId1zK+o9rftYZ8pZ2VQrYm8WM9MDXOcKDIG+123vGpL6SYOvZZ4SufcuYM6GT0oiLY5Zm868coRd/zimtTF8EP73VAUXstzP8gIJFWvTxUic01Gjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786765834; c=relaxed/simple;
	bh=F8X/jJBvyGABUcTNIhNV1gWZDzp7vo4fjP0q5GDsk5Y=;
	h=To:Subject:From:Message-Id:Date; b=P4F0vHiqnE7Essm6Tj/6q3clUL3MwKN+M44akXKVXOv/m6jBtze9Y1UhM72IZvl2PEF5VfCxG6ymS6VcgyUrHy8xmkp8ieRGKP2Lh0VuJCP7t5V7FKO2BL9FVos1fbs/rJND25AlOMG7NIKAc97tfV/LKclE61V1RzZU+28QImM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVBGrGe8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVBGrGe8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC322C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786765833;
	bh=F8X/jJBvyGABUcTNIhNV1gWZDzp7vo4fjP0q5GDsk5Y=;
	h=To:Subject:From:Date:From;
	b=tVBGrGe8Dv/To7G0SCx3d1azBQ/MN3hW8m3OQPO38CKRpU1bkpxvWTOpXAWf6Trri
	 z4IuFDjJo6M6BWAZ4Uaz8HhGbxYcGnQ23jLJiNXKUWzwhmuEn9E97QtKmZzwv9H9CG
	 AKHAVrw84AtbHZhKyqaF7KUjL5cf9jnljqoujqrqXH2+AoQxYVSey+2BXeDodhDHzl
	 dd/BZHhVHYt1TySNTi+gOC8y2KbtYs0qU+NROxXK1grBm+5MzIC4H7iYKxQGevz7pd
	 SuxtGCHRfeAGsN9RmRkyy4jlsN7+rqaXgMZ6kGRP+AX1ZdRQjx9tpqqEQep9SmrOtu
	 n/eTsNXEMZUcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E3EC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676583369.23357.510583080659120079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db949c2ca723791d35f38f8e235f9778dcef69eecf7def49707d486e22a5972b
Date: Sat, 15 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786765833
