Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C785364CD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718879423; cv=none; b=NLHFq4mxz4lNSH46uYBTtAtyUMSIJQZRq69RZcK17wA8fIRbbNpSkZrb8MzSQyYVbSx97oqZmrfTojdL1Hcc7PaozyYFeXCUCIV74Rld9rSUbFaHpTPVdZdeI2jqFxIUpHRIzsFpXLZirg4DPne8imgkTwwcXeliLnKCqigLuf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718879423; c=relaxed/simple;
	bh=DpU/oyE6vAzD+FNBCm8kKPlx9PEtQyhbeEpUQCf8beo=;
	h=To:Subject:From:Message-Id:Date; b=R19HF+jEbk19WpheEo7+IwocolQTh8sMQXHsMCXuYhDO2T4AIUa4dKFn5A4VpefiU7YELGomM8hwFthjNMpKWSxbRyFZFZysGaa9AKhJVkvODgaMXXalBeM1X7PPWi3L7vMvITSIjAwTnMIVFEmt9WEEcjydp9RfJlJ7oR1r+i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJo/ZFAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJo/ZFAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2419C32781
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718879422;
	bh=DpU/oyE6vAzD+FNBCm8kKPlx9PEtQyhbeEpUQCf8beo=;
	h=To:Subject:From:Date:From;
	b=ZJo/ZFAfEUJUhtvfU8/klXfvTAYOYv9EaaEvTV4E9Ypj5p2Lr9T4NFSOsWICvaVF+
	 5IDgQfXtQvfFqbZgoMLK6Dqo+P30Ov26D8Sl2Vm5dnifHs/QcHogDxWVKndJpdp40w
	 S42rPHgE8alKz3W3+yI4ibfeolofSj09McACRb7xXOJH0nXXBI2vp9gZS7yZP5Gh8d
	 6sDbnVxzjFqqwi7D3ABnBgFOT6qHEaNwXH26LuBrBhxD29WxmsVYusm7KyH3Cdb3FE
	 rgswzdG/2iZUJEpSYLKQbc3vZokcQpFxt0T8jx0HbF7LOVhDFaKVXVtXmx+Nr2XVSi
	 OAE3eIp0qj9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2976C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 10:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887942278.22559.7757475243313456600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0720b8d7f197c1d7204e0deec5c7a3082d237980f457480e8d5f619387f4cfe7
Date: Thu, 20 Jun 2024 10:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718879422
