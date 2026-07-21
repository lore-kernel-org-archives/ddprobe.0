Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5041240926D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784675914; cv=none; b=bGs7CoYNiLlgA5YeucGH7Ec15Me5VVbIVkli7T+75630y7Qtu42Lm0IXOmtmIQNUupwrl0xsXR2LIVA5fbfGqoLNkLXd602L9TA3LSPxSfQRnjs1dkYvcS4O/Vnhnl4OFKcLczTmvSMgTe06bU0A3o0vQJCFnj4o0O8qqjrS1YA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784675914; c=relaxed/simple;
	bh=syEv4mQWkPHGMGLRmxgmB14LvB0yV2qoaRwMlyE/+Ok=;
	h=To:Subject:From:Message-Id:Date; b=Ag9JhskxYeGNalQHL9cJFvw6Llzjd6m9pvFd1MUP33aFDUVBRPs/0AWhmygg68hYjvM4Lk66yU9sfopbzWZQUFghkV5m1k3wNmCbJS6MrixeNr+rbjUfTPdoGOBxEdwpq1Ymm9RrMM5F9xcxIEDGAC87nmMAlLZ6DZMPn7i2OZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqC6kGYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqC6kGYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EA6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784675913;
	bh=syEv4mQWkPHGMGLRmxgmB14LvB0yV2qoaRwMlyE/+Ok=;
	h=To:Subject:From:Date:From;
	b=IqC6kGYPFZr0MN9dSofpqpScez/DCNgRP7F3yFYF6RnZEmThZqi5R6ohYPfDt1y32
	 /QnbQFPO1EhEe4Mheija7VpJDfnO6KdlrRBAFmVkQhGpemR0dIosRrO3CLJs55InfT
	 NAo2gACdFGdD8Y4zZFJdt6QX9BPHWQoX54OxXe/SoufZHb4ygJqgjtn5V2GwxYghiE
	 hDSlnpkRCVvtj/SE6oQm1nHI+PrkuK4w+7E66eDfGzMt8knN+9KQVRm5EWbsIunx4J
	 jQqwanZPnStEZmRB9DNrJpYdKAjKsQ/u3iQr0sMN2jGeiDN+ha7kc/pYyA0sM4Yurd
	 7bWoGRritvKRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3CC4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467591368.3465.183952942223828255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4cc32bd8882ac3def86da15d450dabc38aede7c2ef03c5287d4f082d399aa44
Date: Tue, 21 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784675913
