Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1C818DF8D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749056395; cv=none; b=nXdIQseWlu/u4RChrsEiBr9kLDXYCU1L8Xt2t7lpa5rMc6v7IqYNrO0RtA4kRej5tuoDpictiLj7mu25kQQasG71KAHWwj8g7KdNvOgIKx/J4SgajX4o+mKnO7WRO1AaF8KnUFJdmucBQILL0TYF58d3czun3EgYFSuLR4t2EO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749056395; c=relaxed/simple;
	bh=Gx3DmhiCbhLN06bmWloT0huurrMLRy7VeQSrVwMMBz8=;
	h=To:Subject:From:Message-Id:Date; b=Y1caR7KzAvnd7IqtEAk/nf8+UPYVNQBO+6Aad1lysO+fnjeSP0fVbAKOrS+TmRVy2xv7qHcqSl3zslm+VIhXz7rFl37Q9PvI9IR664QcTXuTLhvY76a3zJ6wZHBDUj7URcex3E+y5dhlLQPpfDi1yFDbUDGQjC1CMQ2lkGC8UZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+Vl2ZgF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+Vl2ZgF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CAAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749056394;
	bh=Gx3DmhiCbhLN06bmWloT0huurrMLRy7VeQSrVwMMBz8=;
	h=To:Subject:From:Date:From;
	b=K+Vl2ZgF9gBCxaejoE+0+XTagHtqwIXZrJVuHcyHwLtmvY5kdYaPqRRWVJszJKtuB
	 f67aWcCk2dkScNwV8aUVtY8O68gDwvmAiLzTmT+wD5KqfDKfGOMiCPzvOPuNA2YmT8
	 lYxdWyxxzx7KSUdzNHxVm2LZpKeCXP7CdvhBu199xfgKmXwAaJoLKmWZxbQLe1e6Oj
	 qyBCIvuZPHdNHANasv8sadZidqDioGC6oq5rxEle5d4FdrxOGdyut9uUbM6IxNT72p
	 1U987wY+G3OCh3lSB0/1a5V+jtnDvrENxpixY+/nuWIFHKzcdbeWTCCOMkN1G3pdUZ
	 vUhwQiRm+ku7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A1C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905639357.25850.5177355423106707358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a9a72df174624247304d0413219e465a914485390dfbc3dd633d6aa66420a04
Date: Wed, 04 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749056393
