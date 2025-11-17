Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11787332EB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763392914; cv=none; b=QGsqdPlss0Wq562iCLM23lxUxBmMwyKBTjzi2ZaIYh5tM5Crd1QB4BtqunBook32dcixHeRKPhBFIQDIfcl5qqev3+B/BDAEH6szGcRiLbH6/LPChIEuARYTbu2VWVU8d5jfOiyLNDdI87l8ZJvd5CrqDKSM5BG5R9VdPMfKLXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763392914; c=relaxed/simple;
	bh=/ixTAQ2clzCZMUmQfmAM7tLki0c3/p+sOsIh6Trl3UI=;
	h=To:Subject:From:Message-Id:Date; b=X9QATckMn3eO43CgQaPJfcsjJB1ZyeCNrjJklVDRPaQRGQqyB5tRBZz8J+FHj5pWw9H1sF35SQoKJk8SHBPwMf5USrQDYqQRBJ53nrPs2F8IB7R6ktz1Xp0VI0kKFS1wN8xaQItB2CTMvpGcWzNLj80ZqP4bw5A0DK1J07+iDJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzebgGmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzebgGmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763392913;
	bh=/ixTAQ2clzCZMUmQfmAM7tLki0c3/p+sOsIh6Trl3UI=;
	h=To:Subject:From:Date:From;
	b=LzebgGmxxvD3KKAfkaw5RQvq8DUyJ+F8em4IXwb3aKL7lw9X861AM0QoAwT7jfsCC
	 4BbFX5MvAEWZaVzoI/rZUR49w5mq+N2oc+vsgeC7YSSXbvv1as7kuTJg2TMz7uPvc1
	 I2RjNoqkgOZFjZEDulIsshbb5D8TbymFHTWkVOG9SR0rD+6I+GadiE3VQtTdcLfogm
	 rYfmRPVjoe4MA48EGzk9Yrs1Dn4KiIIsQ+20wyIkpMluU5Mg+u/ix6sNG8AD+deThN
	 WbIFAFS9AQCqnzXLyxfdt5cvjlblDi3VgF9yg9Di5+NRln3kxWXYAkJdOb26pPAvTW
	 lXm15ObCqRChw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D0ECE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 15:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176339291359.20953.15201929024509706158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fd4a52fd028ca8f828b1f56ddfa863e596c421917f2837c1e6295aed1d3eab9
Date: Mon, 17 Nov 2025 15:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763392913
