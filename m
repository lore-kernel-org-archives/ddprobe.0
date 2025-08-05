Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEEA262FE9
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754430594; cv=none; b=q6ZE5fOAkPYrA5XGAvmx+Q1qB241kf9GcedVJ8/1jBedfEMW8L586P3YPlLnnBYLIiFFy8ColHYqBEgfEXxuG+jci2c80227ru3v6aawKaKIkOXf89fDfWGNG62wF0NaPpI4lRL8v/0CtmAPorVlXmFYSA9ic2KOTiWf4qCU70k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754430594; c=relaxed/simple;
	bh=Wi9shSQ2xEmFui1yZ9onLbGcqQ4WkyXB7VfUfrxb3hM=;
	h=To:Subject:From:Message-Id:Date; b=JyfEOaXI5oWtVPEEBQvTajv52JuW4VMLMW8Ats/8DVyLhhaFuAKl6OzFWCdsDx52Tw94B023v72rVdCNa7+lfECMZSQt/9dmc6Pp7rcKFQSjWEVJInTbDZzyHrAQTUH95uykq+J6Yd4xUxJvSsUso+a/0DhkncEVL27IeqMdv4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFHgjT7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFHgjT7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5510C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754430593;
	bh=Wi9shSQ2xEmFui1yZ9onLbGcqQ4WkyXB7VfUfrxb3hM=;
	h=To:Subject:From:Date:From;
	b=UFHgjT7/HxS42qdBp4krwjZGJfZ54DU13Lrx49NV06r+B2JBgbixOXzaas3Xa9eBD
	 cbE6LE+T/vj3tK4uFbVPiUgNsOw+xbKDLVKOjvfjKIPPdCfgAYz+WPE3jjA8/w5QWL
	 6GxvnqsUpsyxNL3MxFdWfcXk0BzYvecFywvLfcoH5/VSQbo2TEOKA/XagO5aFywCGv
	 wdqUtfRpFMP3vITQ77RsScrP8I5UOz9J1aIZTfMNVeOjs8xmjJQg9EMBgJMa1Me9JO
	 mxylzl6sOoqvphX2eUVsFpWlp0Yqd0Eir/cFQtGnpbXigjMZhUMA0dwwi8cgPm+2Oo
	 TFLYuvaMou3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA4C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443059357.12323.5341580639889243318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce77e08416f635f0a680cc11a7195382c2b677cf645c78efed59484e20c2453c
Date: Tue, 05 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754430593
