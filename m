Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C94217F31
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770692034; cv=none; b=uO9zgdVxrflv2CAxpsn9fchW7x2zu9JlXsBrARJhvtk59elef8B7IlRh1iOUh8KiXcLHb9cg0wJ7F53BEYaLqR5CyRTyQo4cxGlu/iIcijg8AF4fPkmuXc2TnJ0K/T5ifPRMacaVTWgxZCrqI1H+EU9VL8DH8lqEUa0sbCy2tP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770692034; c=relaxed/simple;
	bh=trHR4WMJk5K1jCLxQ2CqE9Y+of6fqiXIbWB/wh0yLqA=;
	h=To:Subject:From:Message-Id:Date; b=cahWSZHjFlIrfnUjN73mHxS/KEc73DrQ/9vvn/57MFidIEMKHtB2lANyCTTE3nKlzZcMN/V6SqmiTSNDbzrGNsv9OXDuh8dE0z7mAIMYg4fpR3r6wgx3yJUBeagM+1lfT8ixVzOObHJzd0UIsfhBno8OGsX8XfHnyWTXbhwo+fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLdIBtiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLdIBtiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD81C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770692033;
	bh=trHR4WMJk5K1jCLxQ2CqE9Y+of6fqiXIbWB/wh0yLqA=;
	h=To:Subject:From:Date:From;
	b=CLdIBtiqfmsGvCdchLsUhudAdj7iqqoIwZCF1Ye8IMcuqWk5E3ChCQBgl0cUa6AGa
	 AuWoEr+Xi4WvZ/tGZK9ONb/IDsG1mSAWA9SXCjKKl/4uSBxd0Ba85jEOlPPQqs3e3J
	 RaAaGXDdotzIx4mAM+bfzoiFKBEJdeh2/ELqvFaRZdIBPzPDSxF609+e3SdjcPQ7o3
	 x44qZefD6Chqxxk8b/ZEggg7F8MvO9hI8yjhhh4PQeWoJ7cx4KF5t+0zaCWbEMcKcN
	 6nVn5et7ElcJUXApXzAu3wQRfUId/Jmg28u33Qc+BBWSTjTOT6V0DFfnUVh5+Ci6bi
	 6hMxmUoPTTasw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E2FE9462A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069203363.20738.11351480190922874422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df333c51db46ed6551d54d274a927cdf4238aa1a55b1e4df8dc150278198aace
Date: Tue, 10 Feb 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770692033
