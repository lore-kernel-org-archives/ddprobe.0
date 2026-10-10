Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682C13CC303
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791631834; cv=none; b=uq/OgqbCl+0XflkTGHvZFGtlHJxEFPnBC/7dNpKxk2be/4eimCFT0iVNqS4I/q62bNbCeuBi3rQ3R1x/+1l+5q89T+I/vmn4Jacy70UBj+T/EimiZHoOv9v7/dt5VtIiaszneZbKyvKwtQjU9pVs4foQVlaIv2W4RskJNpqZ5fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791631834; c=relaxed/simple;
	bh=GBjVtidXF1y6nuwnmh6a7aBhccgOWyOFhJpF1pVpJKE=;
	h=To:Subject:From:Message-Id:Date; b=b63/ppg+bhCsvmENGSoJVoAP3WnQ1xh/WtF+/AE9TU3nSfiyP5+x3OrRK02OVNu4i4Xlh7ai+sAcjaF0nV7d8cI4GT2rCcYiDjyXWh5OMXo1cpBIN3BIc1Tr4gsUiNo72+2lZVA9zHZeZUD+37y62yPKo0ii5z5q2Wov0d7lC98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erT2gYhR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erT2gYhR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27C7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791631833;
	bh=GBjVtidXF1y6nuwnmh6a7aBhccgOWyOFhJpF1pVpJKE=;
	h=To:Subject:From:Date:From;
	b=erT2gYhRuo3se4wrUCo0BB6wiay5s7UnRKLzS2O7cg/wr4eFTjnAxkuWPUuZf90nU
	 8HDCsd07/kXWL3/UM1MOoIiUTcF8VoZr9TfBblKK5Ehw8zgPxTJfWjywMTpk7iEqR7
	 8WM5tFkcw7hYIywLxpsAzHfVbqcOqpkyc1a3NuvEp2UYOmwq9ZgRg/k7e9IUgPjJeK
	 glH+wui42y6jcpi+3W/jeXeolUCBpUBZHSWpwSswn6Az8EVuDRDYVxRq2JDHP4ghcx
	 LrNU6GrHoGDjrfzMYEhfAeyy1rGN4Jq2L8iyETn0iM36npDU0wqrhnu/UUROsHyn/y
	 AUJpoCw4yBZGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E64CA6004
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179163183368.16341.9735624545784006247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41984b60fd9ba8551710ae1ba79de72cbbd57eba49a8c5fd11f665c23f303cf
Date: Sat, 10 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791631833
