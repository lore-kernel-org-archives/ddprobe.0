Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F33112A5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786561834; cv=none; b=QR2idvvDyZ4c0QwvyIB0q/PrOmQzTCWmWwwGV+q6eU44Vv9MV5JNzbhTj2np/MpAoT5JYHo5VvwxyqEC3fG77t2kqei7K7YjvqAOWTA/+wlIDIxJTgwyKHSMyeCtRKHnqBkujtKXlHPzBr6MTfHcTPOHf24fg+OYhlCeBO1PqyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786561834; c=relaxed/simple;
	bh=lp/rPLVEDoAbQ4YTXuTdMViBsM82YRqsD2RTP3VJbss=;
	h=To:Subject:From:Message-Id:Date; b=MaRk/G9pwGSMQ+XJprgFZk8Yd0FDxTf0edTh8zpgkN6NlWs1LCDJ+yc/IemYP6+UjSEijP8R/3/7BIaEEYuA1qcXDsCWblbgHWRm9tE963w7+PX+VQdK/Nck5hBYQjtjQ1RnkR6P71lkN2XR4r35Hz1qmMhwRH3XDSLfOGOG4os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5UiLrjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5UiLrjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEA4C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786561833;
	bh=lp/rPLVEDoAbQ4YTXuTdMViBsM82YRqsD2RTP3VJbss=;
	h=To:Subject:From:Date:From;
	b=M5UiLrjl6/jcbXkbTotnSW7Y62TiadEa6WQv7qLHN39bBVUL5exdTCM8r8Z69Okqz
	 i5y8PPy0Xn5bJaAZfX13SNLICsY6enEFAvrdtu0XmvK6f0YjSs+0ttSUi4ogZol5m8
	 aEjgswpYexA5kHzx1f5Fc7cCuEJ1U/ryp9P9auC3bURahvS4dGNUrSkZSSu3i9C1VV
	 U6/5MstvTgB6opd+rWzIVwhgTEh/J1zU6KmOpeAT27RELlI129JJeDVkAKbwyGWTNs
	 EaPnyrdgHkbfi1tFr9Q/r+9PdhnWWV0JixH0CqwvPINZmwlkUb/Nzy10WZc9ZD80Rs
	 srvnwm3LdaNFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0C7C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178656183369.6071.6494528951865610882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb90a611f752e38be0d9b9f26ff1af297732f34265f01491dfddfa38dc064e0f
Date: Wed, 12 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786561833
