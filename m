Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9193612F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788928835; cv=none; b=FEovePYl0jQ5HuW9HFiu8yewcpS82TLD34ZdBojZNL5X+QRDECpbq3e9KArbOhgyKvcqm7iiF7GrMcqS+WX4trxbHu1qbrptTmvx3zGTMFUaKUxstcanf4EGKjKAzxq3vFA/8YiT+Mb4DoKSK2atOF1kYiXBCw1bKKKTyrAiG0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788928835; c=relaxed/simple;
	bh=5ALPlzev+EladjWyfVUR6yv5OYE2KGz4xfN52lUkFBE=;
	h=To:Subject:From:Message-Id:Date; b=I0WPdKgKQ94HdEGNhWumetzgMZwnZG1WED4NivE2BIDaKv1Y5lX5dvYpEJbYsFmfWtf/5JvrPzdJ4ON0xRMnhv1WJ5pZebbqs4qaEfCFHXeeudrjmm2LNNb3gKJTSgd4X7BdOTj8JlkUdaLK6GeP+lkMg70/IOS47j2P0Y7PCHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4JutfuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4JutfuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DF3C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788928833;
	bh=5ALPlzev+EladjWyfVUR6yv5OYE2KGz4xfN52lUkFBE=;
	h=To:Subject:From:Date:From;
	b=A4JutfuQu32VvgEIYDdHg8drcuZFL3CwT6OXHaG/4KDizKZzn6hKTgeFHyxluhSIN
	 sjgY2n0Kt1vdJlD9WoEY56Fuge7pFfK9ryVzQEOevRA7qMl2dbPH1rNIiYLX0rlNMJ
	 IdfKxug2bc07L4+kk3wBod6iIch2NsxdOnz2N8RIN0+lcPTLX+F4yPPUbR91MdUaym
	 gOotNkLeNcxM2OkU9RY/EGm0Fcqptn4eqEPcqKzH35pa1vKGnlhuN+ek6JaSKJX2Gn
	 WWher+/Fvs4kdpVtRZy7UlIV5zTZ5LEwWXsXGL2y/mNUyarxKEtRcxqiT+aodIAVXD
	 N4Pisye1A/T3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FBC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892883369.20208.5130977944503900801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c670e3984e16c7b78ae91a9dba523e190773493540071dcaec51c0cd056454d2
Date: Wed, 09 Sep 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788928833
