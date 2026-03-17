Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF9624501B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773741294; cv=none; b=YhC2H3NZMIVzS6HhLb5SCAlyMK6wKXfSzhZksmD1vPTR/xEuuPqRhcbo/449wb6XWGIRkbTxxSR60HSnKI3QhJ7J+B9KjQD9m+6+R6bKIOBnWFiN2/tfocyw4B54FDvfGWKxaheoBpbHKYAAGNMilsOuWbrp1L6W40d4KwcIppg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773741294; c=relaxed/simple;
	bh=l5saQ5vu182r3w2cAUCpxDx3Bg+5hj/QPu9CMr/pUg8=;
	h=To:Subject:From:Message-Id:Date; b=KnBtyFA86hkEy+dfiM5IM76SB1+V2b+EdrQBdCBhcqsFRBIYJsHfvbN8ROp/4VuqsYQZP163Wujd1zYSXu+In7+a4hhr2kXs0yLj/M0rdrBh/FxKXAVIdoQkvsBgVEtMPQXiPQRGAy+3vXXZwSghcd3FTt06OizjaNYsJE901qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtW4V5x3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtW4V5x3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D311C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773741293;
	bh=l5saQ5vu182r3w2cAUCpxDx3Bg+5hj/QPu9CMr/pUg8=;
	h=To:Subject:From:Date:From;
	b=WtW4V5x3SxjMV6QQTL9Prb6N7lraVUNUTmj99NHgw+Dqf38Q5O7vCaB5q9VWKb7G6
	 VUW7T387cTT3Xcwj0oQZ5vnhIA3fVdvBsSKlp0/CCFzyc2zzeQHNcVaYLrbC6t1za9
	 QThuxNigQbA/S9QaR9dKvzGhXHzp29IaRAxJXTsjJx2mUy5dfrQegqKgZiVolHxSRh
	 gdKwdCRAhxi95Lf5D9T0yMQW05uNRm6akLNMyAK1zLWkAgixjFrtGj5YZQnacNXimu
	 D9BRu06o5Qvtfv/9+KmyYGF5BkYkmxpNMwnn+88EgpdA1ifpPeHMI291hRIHhFQCqv
	 An9puEfYpQGUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF1F33831
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374129357.31520.14672956430606892896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c809978f7dc144438cfb3415785dcef62a1ad0e1a952b9f92faf090c4ad85467
Date: Tue, 17 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773741293
