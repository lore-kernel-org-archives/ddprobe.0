Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF2F229B28
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754567395; cv=none; b=gUBTXEUTQhbWo0Q4K9BrLMbXFr7cS4G0RyRMYfIbemAquAv7RngNrDKIEICUgraWuJlpKdP1KodL1TqiNC1IJHwv0qzcgTQNdBNMUeuiuQmgXn/cVaU6mQAAfMVTgSNMSsRt14ncw17NvIpUjkNRk4rG7WDGWoLWyp0EJ4WPt9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754567395; c=relaxed/simple;
	bh=XwcgX6GQhGQTeCdml946pPh8j/h9q3trGt4Nkx2lrRo=;
	h=To:Subject:From:Message-Id:Date; b=LQz+1Mq9GHLk3dQHTBM8fp5MdikPur9qlb5oi0Eo2z0dQQxSlWO2C6T36lQL5ePmoAODazc6mSX+QV4MisOXDrGroZFsmnqgvq2mH2FKQQC2kWFuSH+fhscWKqzbwQWIjKNBXPT/Chec7gwC7xcol0kTuAeEjxtJh2iJtq4SjEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fH6pYXJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fH6pYXJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E89C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754567393;
	bh=XwcgX6GQhGQTeCdml946pPh8j/h9q3trGt4Nkx2lrRo=;
	h=To:Subject:From:Date:From;
	b=fH6pYXJk008qAaG5sv5C+BB4qZZhVbf6iC3PzU/yEEd48IoXgKgyFVCAyGG4+1hwv
	 K7NjEIIn9mkjGYuynzx5nklluX9Lr7I0fsnuClZdlug0JePkCKs5NqEdA613k6VaDN
	 gP0NpkXWq4m0mViakFRws1Dayux4ZU5urbnrNlGQcqQs7AQHkqlmNcsLKRMmX3Gpi0
	 32z8yMBbEfKEf5e90dj6lj1G0XnqNaGsZeT5kCfqTKMcL4x9Y3cGnHX9HeAv8I6ua1
	 42rQC16jNEDbRZ7VzD0l9yh7pvcPqFKT+/9959DVFI55KIAfpMk1NmdYGucXXyIPYX
	 UwMi0squAGFqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF00C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456739358.9897.1642580664491528722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2692a04e6c627f954280dafc580f32b7a391775284e777ed07cb342f27c3b69a
Date: Thu, 07 Aug 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754567393
