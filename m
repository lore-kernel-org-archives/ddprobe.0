Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED4013541B
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745298594; cv=none; b=sBV15TNjt0Tem9tHRjWPXS2oQytYhDLwsmRYXXmgz97BBeWw9CU5zinoWTpWtp79Qpmr+RywM0nhgDnPN7LIQKmhZEIbwHbM16LEjdsEBnyew3qOLYWvcnQxvDdOOZEw01ZnAo/zsJ4QYArPctsmFLKVgT8X9h/s93k8RpU7GUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745298594; c=relaxed/simple;
	bh=4tDKokva3tZBGYssC1hwKur65p8r/lwIKpvnGdoEhCM=;
	h=To:Subject:From:Message-Id:Date; b=Z6LJsQycmwqYYjtsK8nPaCHCEmaAQMvSBQP8DWcqVwleLAFElFI6qa9d1Be3XwTGTwMag+LQFdeYm/fyQEvzrLaj9O/a8cKHCMstNQH06PlWxYowYYpkRVa+33AHJpNPIaMkKyUt3zYMfi8uL0fOCwd5J5U55JTo8+r4UPX759M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT++VfGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT++VfGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AF3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745298593;
	bh=4tDKokva3tZBGYssC1hwKur65p8r/lwIKpvnGdoEhCM=;
	h=To:Subject:From:Date:From;
	b=iT++VfGRKPkGrQbo3UnDJDAaLvd+eohtNEigaeVJUuEaCgd4QOWoFVSdTaJmOgqzX
	 y78+JrLt3xao9Usbswx0lqJv+OWI51wu1VFxSgI9gLPoBr5vHnGUrE80cSLJYTF7nq
	 jZY1/HRXHDTFLIQl+zjLYA91QX1lDQAOl9hW9E0oTo2LihKE+q/1n63Cj/ilmFV7lf
	 iuUlmG+yJDhRBV9s5v5FC7Rq4GBe4Gl6No8NyMbMPu8YzXhd91jeSK6R6kGTN+aU2W
	 fa4/iHq3ZuKzKEimpEU+CwoeW/VJPIxElzEPHw9z+gHV7qeJTNcqSxGj/3QQPS7I8u
	 EaVUcPJ4iYt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B7EC369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174529859359.27589.14879459228355241400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c51d2895d5da440849c56ddb60277b154b673bebe75aa5f604263e71656b93eb
Date: Tue, 22 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745298593
