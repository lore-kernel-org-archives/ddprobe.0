Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B19C38236A
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772656494; cv=none; b=Tvx5IWpi+9gqk+G7IUn5FLQ3QNumaGRzVDWMS39qP4+j0q+ci2sIzDh/7PkznJr3Ofyc1Lyj1kBjbBj4Ahc6I1AMkrU+oXpY8KnswLvSKi1A4m3rmzONmkuNYKOSgiHddlm6ljvlTkxL8xQ12fonZZm5VKDnlK3ErCmJmuXOiH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772656494; c=relaxed/simple;
	bh=GDmUCePgdMcw2rj5rJrquGJ3dmMD7xoaY1laV+LV+P8=;
	h=To:Subject:From:Message-Id:Date; b=ZoDhhRiOM5ppkRa6dhmUtHlIlYeJfX9tRJ6B+Gi7AQnlrbCT+5rZUEI/hAxyBbZlMpMJOn++lSO99KlxAhX5nrgJb0t71eQiVFFCI4H2H4lKJXmGG/ru6ekAMPuo9erM/o9QIVnEy/uHAJIR+t0i2TYd0EEdBD78YvD3VOb4vYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgOT1Co0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgOT1Co0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD798C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772656493;
	bh=GDmUCePgdMcw2rj5rJrquGJ3dmMD7xoaY1laV+LV+P8=;
	h=To:Subject:From:Date:From;
	b=MgOT1Co0S7awkjnBX+vQwX9/7koL/r446FxT14EaeTIqFxDItygx49KbMLkwu8dM6
	 No95E+qxUsyWonbDdVrVEL056znoLy6/RnG5Mn7fQF9mDitOFDK648ZHqMem63rzyX
	 6iCoZ4zqsOec17SXB3c3eAecwYoDdN6/oQrWDyb3PoJbiitG9x6wux5Rb8Mh4kiK0y
	 Gc1hX/d3paGLVtOXxRhpcoLwcalAL4UM/IC2d96cqsgIY6BqdayYiyyDuUuh15PdAH
	 Kt+V+aYRHtooYUIYezEzgI7snD+ECpf2phzRtHXUva7k6lr7QYOH8Ri/OlnfwlYfJS
	 Qv3TmkUuD9oEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE5FEFCE44
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265649362.18327.15570719924104300064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b23ab9899f163db13938d448fe0b2ca00a7cfd788cc669a5fbefdec4e669a0
Date: Wed, 04 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772656493
