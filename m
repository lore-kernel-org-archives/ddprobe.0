Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D019D8AC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749923394; cv=none; b=XIConMNFGJykEkIeyRO3COLUmVfJEKV3fyx0odBo4fpcLmh3IG6G+Ef49klunmHxvZfe7z+xvg3vOUMBlJvQNeW5nN8ezg8nDcrTyq12xeuFYgp+Rf9McbSD1ZDtPc7WrK/zP9II3SDy776s8YXtkM8MAYVjd7MPy9Agr6CIKnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749923394; c=relaxed/simple;
	bh=OzqtjXwxt3wVZfCFftfD0BOc+WegSUXYxTQ+FvRX138=;
	h=To:Subject:From:Message-Id:Date; b=S59d1eLsY4eAHHpr5vaIJMFtiVvJTnxmy6ZVDe5ksGp4UgMmHzhYXpEjv/zAhgKJJoairUy7ukGQAqDM+s5LmdOGZcn1yc5S7IJjtQGYE1dbE2Uu48gI80MglTwcwfVSbDD0oHV9wyMdvl6nPmi0A4fcVvcUKfdGiu9dUqAQauU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLRFh8hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLRFh8hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A236FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749923393;
	bh=OzqtjXwxt3wVZfCFftfD0BOc+WegSUXYxTQ+FvRX138=;
	h=To:Subject:From:Date:From;
	b=XLRFh8hVSlDmxjuSHt0Illlp0gl1bZh7JBXTO+K9L6T6SzhAQvy5YJKaOLGoy5uv+
	 sw0ZS41YZmXnm5CCGMU7Aurfz+QIysoTCiW3FtjoN/sJlk4Nm36Aj0AZS9v+qPgSDu
	 2RIzMDxs8o6ldTEwieSgTYuXmv7W1gA9u96hatHh6pySHQfw0POiKOKRwmaJhDlPsJ
	 ArVn0kMgA0sRiEyEgb1nDnQQk0+gzc6K8x/7YzjwYNEw5wXwx16L48+PeH+j3ItlK9
	 L+CwvQlAJHpjlarxMXCFb4lQ3zrUaxf5Gj+kiURWSYgF62zahHD0zPjb3K1FKNrrVj
	 aB+aujBDSWREw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9EC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992339357.16146.17380983044692397923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95cab7063c924fa540a35d7539c53fa676dae288ba993fabc9c943e8f9995cd1
Date: Sat, 14 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749923393
