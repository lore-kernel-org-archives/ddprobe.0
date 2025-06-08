Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27966749C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749374394; cv=none; b=sBoYYZh9eHOISBSuQ3BacBI3TF2fShCDcUe6sJbhTXcVBtyGwANeYt1jHyrl8J8lbbexAi3X0skSqQ8NpyxF5RCE+spZKTp+Ke76hTbxGcx6+TFoTXsVvO/EVncPJRqFvcq82j0usH8ZxMYdjubdKQWm9Ol7v7j1g/v9vo4QnpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749374394; c=relaxed/simple;
	bh=XOVg1oFfTYtLds6ZBfNlQKBJS/OnM3vM+6JuV+pTQvc=;
	h=To:Subject:From:Message-Id:Date; b=fNzsiL52EoshnRU4RXna5Ntz9pqb6cRDNBYcDE49I20k1uWsEbCY7YjPGHOit0O/myjkSVNfrpR4coRzqj04FOG9QHoK8vVF4fAmF/hjKTJz2iSjJRQvE6vCXK76jjk0k9Pljbhl9/26o+rx6MSMqwBxXYAHooOlLKHsVDeMOto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkVrONt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkVrONt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A822BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749374393;
	bh=XOVg1oFfTYtLds6ZBfNlQKBJS/OnM3vM+6JuV+pTQvc=;
	h=To:Subject:From:Date:From;
	b=HkVrONt1eGX1zJW4zJxehBxH17qlkWDJnoA3BFc+RxkaVy0GAaKshXaLcOpJi4JXm
	 hA/jdLLsU560Tm72Ct8HQZKAdG1/Ju3SOmHixBrLl2yxP/AQinXOAQNg2tUAuOif8K
	 3eAsVFT+GBGN28Vyp2ulVV/OsOSW156JCLIGsLWmGYynZje6prFSbj1MAOvpyCbYCy
	 /3pAhFxgShwTT8HjcuUlqLW7tILtUIGyFPwu8/iQ6QjzVviQMpb5+SqllYFIDIPA51
	 lGHwkyW7Hr4FlM5Q6vyowzdWdZ+fIfEhIkxpZ1ku/2eH56KfgWoCMTJCsNzX1f0XZ6
	 tdrAgTC2lJK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E6EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937439357.23706.17621472584937687778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0ed0ec00e4d9acf9bac44f801b9a220151cb35aaf7b963e6e509c65ace6458
Date: Sun, 08 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749374393
