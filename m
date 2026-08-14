Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B72D404BFF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786700435; cv=none; b=ecE8JQyVa1WKmOZjLTPeXn6bsMA37jN3qkltjZDIELF4+SdZNMwiB+ZwlF3kF6oNe3SXBmXYTxAAUcHG8WyCwHnteYMUonRU+Y4X3616ZOPajKywhS2Te5t4LNnBYczHf/iVK0zRjEPquG5O8sWtRENMVyz5+7yN8yTVlA/R9po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786700435; c=relaxed/simple;
	bh=pdryxsN8f61WHV8FnsVdWjcHpm7EgE9KY+V+dKuDqsM=;
	h=To:Subject:From:Message-Id:Date; b=IvXf5ufZGw5j9z85O5tsovFzayezTuDjGuw1oL5OKStwiTgFADramT8EsNa0iuiikiqWwh+uk30QbTqfd++dxf2VURdWwFxH9cd4/IjKW3uYdcM4XAVCrBo6zH6jW23SJYIgydaNMdjQzBCOq4GaeWAppKXD+o2A2MUmqM8rXsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQ8O7Is/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQ8O7Is/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF386C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786700433;
	bh=pdryxsN8f61WHV8FnsVdWjcHpm7EgE9KY+V+dKuDqsM=;
	h=To:Subject:From:Date:From;
	b=aQ8O7Is/R7xZNaLiBl5IWfni9ectfa/ION/VKnggKve98N273fIO1HssjtvFz2wOZ
	 xL423V0vxzrgiBDlDkMvRQb8ISEcOO+sKmyAdgciW7NvAsDjD6kUlbb8gfZVTIKqDA
	 X2+xWOolYZimaGOw/bgBavgZKkr2IR6KOKMxjfcjzNKTqC4kJzjUFOtAjnAEqJ2hQR
	 pJzu0zmhdcHFzvH08t/6JY+T/BRkOjE0FyvKhJLadJHCjO8bsHmJ/jFlv5Q0MZCyvl
	 Ht7Iq36gxZWjLnKBdNhqMSe4Xa6tcs03v5bImVGc+oqaBb7MWWmijZdhb2nlB4dX7j
	 CToXqj1TI+uNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEFCC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178670043368.13541.18256438361405558674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c2eb3e2f90bb176ec96d715fcf7ef1fb2f5f8347fe43e232b080eede996339
Date: Fri, 14 Aug 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786700433
