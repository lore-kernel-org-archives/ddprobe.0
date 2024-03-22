Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4BD52F9B
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711119496; cv=none; b=GhfgvMs+BY7WS1O8HrPCrk8P7CTeveQHJiVhh8CBr2EUK/CsBxzMpc09wZkcCGOFvYJLhvFj3gznl6RPIsmlCsoyX9U/KRJFXzyWwkZbAacDBNswTFORGAgOA9HeHRutXkIjybj7j38NP72Zqz+CEXcOGkDRGWmElH4h0CtJ2/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711119496; c=relaxed/simple;
	bh=scyApQ1OajORXCtdi7Rj4yDI7/QvU2OBZRe+8kCjP9Q=;
	h=To:Subject:From:Message-Id:Date; b=lvq/Ro/UkFmm9CfUQrLUo58V44YwzIm3H0BQ5rW3Hs8di6qYVg0hhDrA6B1BupwUu6in39E3BZCDTqBMg/BG2SJu3udDxP/eTSwVjxBjKrBFhPRW04rNZU2yOXLuNC13LV51x75SkTTI9udj0xhK0OyaWNkSQFZZh78y1FMV+uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4dv5hUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4dv5hUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AAE6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711119496;
	bh=scyApQ1OajORXCtdi7Rj4yDI7/QvU2OBZRe+8kCjP9Q=;
	h=To:Subject:From:Date:From;
	b=r4dv5hUj80BF5I3Qt+xx6JkZJUjz7LYHNMadl6FxlqJbEpyqwjg5Hggk/0+I3n7+T
	 2BIxg8IgwX4umKf+GOmRfrZf3JmTxS9umACfTgvDt4rOXxBLQ89us7pt2DdeCnuY7U
	 8o/MlXOX/bY1+BP7g6IPSRWmI7wGZWeg8UWFu/OrTtNgwXElfw35ByfdLVzG7AJwSt
	 HKUQidHwZnT0ygXfA0JSVOLR2LP0euactmQ+rxETkwkeFVsZL/XAWdGdu8y22O8hsr
	 nDHp5uT+TPwEyD+s2thfpskTPvUm0V2SbWsVGPCkZsfV0PWTQz/SXRQ+mu38itQWr2
	 3EtSMUi80OLlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFDFC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171111949637.19783.9423843926806387005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f52b2d0f927275fe9b3b51692364c492f4374634cbc7af4ad3a769a445a39d
Date: Fri, 22 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711119496
