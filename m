Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3304D79C2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736255154; cv=none; b=IvAWQkMbCnXoBmd7sVYQVyTtl2fCp7BycShZjPlQfscURXV53NZw8fNsTe9UoLNJGmr/bs4juT0Hcn7SmOJp3kj+gvUFoV+xz0FBIrGayfD6cP0LgkYljmc+9iR8UpvzaVnseaxnWqwyXlRH7TFTIZy5oJjBJ7+u85+1LZ4naig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736255154; c=relaxed/simple;
	bh=eU98b71ZeXa//tIy7Hhz7n6GRPydykdllHnNjsStU2E=;
	h=To:Subject:From:Message-Id:Date; b=I2Z+fMbHoxxQj5tKbN/zQvkYY6Ct3nbW/XFcf6Fl5mkwM/OL/vql/Y+IHQU3eIo1sZ7CE6P7X1CaL2UIWzsl1WPjnSba38e4B8C6Ft07ui0UBtMA5ZJWh30aDZN4+DvPmox0vZeS0SMJARzrbjmufOl+r2OiUZJINvK4+L0wShI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SzfCfUBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SzfCfUBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BFCC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736255153;
	bh=eU98b71ZeXa//tIy7Hhz7n6GRPydykdllHnNjsStU2E=;
	h=To:Subject:From:Date:From;
	b=SzfCfUBvBDxoACr88fVbXf8wyBE5IXU62hb8IBCT2w4yhs3qbzHZ39YLa9659ATku
	 MTFpy8tiMLgek1TWabEJqnSvTs+5yh0ylbGYWmA5c3XLjht7ompaM/qRwJ/JYsenrQ
	 lf4wC2WKr+a6xT91w4OlLfg1xZuVnPxuapoQd/0l5+zK7bP/wiS870vhqkdAc+A5QR
	 yCv+06o9knEtzjgUXmO9LC3fpFtDBrHF8IB0LW77BUNwG8b2LvLO0YLMvr2SJp4HQx
	 oIzODfAlBwOxBA7RWhEK8PsGpSovTObwHCUo349L3W3qCE+pY5lnHm4p8ZkZhpICxv
	 49nV2S+WdGqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91785E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625515358.11974.9925564615292523985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd92dfb550edf72fed25b63147d61a053472f609f34112a994527ff66b9867c4
Date: Tue, 07 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736255153
