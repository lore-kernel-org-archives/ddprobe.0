Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2725F145FE8
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746440996; cv=none; b=ihfGH0NEAEG27s3FeO6QphFLyF0QBgCOqoANO5KC6hztN3DrXAcGV8BVm9x2Kjmb7XTB2+5IIe7VZhpcttBaH3KeEOW8bwThrv8ybrSgFsdJM0cWiMdyiRoKkljUpQFFCnoTypbHsn0J2shKIPrm7wMsy/6RlNJJUxRlwb22sNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746440996; c=relaxed/simple;
	bh=qbtjDSu3TF+LVPGN8j7tIRUN1K7XjsVq8acMeZqqShs=;
	h=To:Subject:From:Message-Id:Date; b=lkMafzLd/oOu60fiDnJIMxdLBV/rSjac3SkpRNyCtgdN1BKeJQiAHqlwHtJY1IbOdcGv3WkDzEq4XTe0t1I+9xBEFWU40niWL1xO4qKFudCQAPGtiSSDu7dCxh3+J9XtLmN6xxeRayqMaHs68iTUtO/uhhlmi3aouJgzMiO6euM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5E34FzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5E34FzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE77C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746440993;
	bh=qbtjDSu3TF+LVPGN8j7tIRUN1K7XjsVq8acMeZqqShs=;
	h=To:Subject:From:Date:From;
	b=C5E34FzKoPCV/GSOYd9Btz3b8SkeGAql5kdCi8K2v1fYTWY1ir943VDmIW+xNtgWG
	 44yUt/iHsZvNAWpx+94ss63JjCU39yhBG0oYJKQx83MR5ZR5I7t871JAIVtKGIxc3U
	 dpZh1b3ibSJjZrZpllzPo4iP7qTVK4xf/K2eIQD2JmU4C1AQIlhgWLDc15L71xpZGl
	 TZ0nkzSVlIcgl8F6hSvq6SLD9nTuohVTYnVcWfo/XG2FzHjPNE3M0EL1Vr4r4Bag7T
	 QGrdGlCHmnqr1MYiY/KsJTfY+8al4fLM6L0OQa39Ba2cibvk3Dj3QOKIlTw8e8I852
	 GFZ1h3QTJXcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2CC3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644099357.13643.9483120230891723935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d44434079e87fc59f1001d7451402d314fcf400e45fefc3652568a2e9ff571
Date: Mon, 05 May 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746440993
