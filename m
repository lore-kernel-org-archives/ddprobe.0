Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBBF42A149
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434514; cv=none; b=Ixhg5b4ajsOZVBq/ujFWLDqoCVaH9UgAsS9f3utUw54tfvNDqWKPCDYROvnESUEQkoUAsc8fu7cKsfMlUYHsyjyhhN6xH66HoEcnB0ypa5O1KO4ZAm/5Z1AALlSOnUxK2NOIOQ0+HufHT0ZBvyfJ1d0uBJ5vYR33eWQ8uNwSoVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434514; c=relaxed/simple;
	bh=ikX+4L7iDQgHefPO1Nj4T1Zbo6Rwe9Iy5vnnIyqTDl8=;
	h=To:Subject:From:Message-Id:Date; b=dV2DN5xgH0XPCHMd/82fhTnU1XPVO1BCNB41ucxmcxu2Zwq793/hx7Dzwl3dlEFsIE3wr4IGs8WYWXUyv0GF/zg5e0q5p/jfMIOrNw1OAfRs68BkI/AEvH7xH6mTXyu9XMxBDHvxixjVLb3Rs59WB7V4kdQvbyetY7XKlASfRgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7GQxsfl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7GQxsfl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9390C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783434513;
	bh=ikX+4L7iDQgHefPO1Nj4T1Zbo6Rwe9Iy5vnnIyqTDl8=;
	h=To:Subject:From:Date:From;
	b=d7GQxsfl/hClLC+Lqi99RsT3b5PMCqrYPmF3ohBjEgE8S7oFi79iJtZWyIooS8dtt
	 aXrbCafwGnvGVPcA8S3xrDlX4KfEsHQcoL/QHBGkk/iMwlqSQiPLaYvEAvPhdqLL6b
	 ZeMOcKa3kjITqcpl6QR/V6+uoC2BdFYlnZurnicsgXpmm98LxjW1JxSdiU9bmBuoRm
	 gZsNpPp1VY1iOQHoYDB6M1zaQ5ATO8mHGU2yCjSaO0j7VJfhKIZiLTF3rOz6WJBUUX
	 FtO5ePAC60REl65a7keiD7RHREsTmllfzqX47BBwq7wFKTlH1XpzRUAsT6FubEZOJ3
	 ATwUNyiF5ybIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88BAC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178343451368.26446.18414321334485656009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c96bd469b9409a322fceadc6585cb7fd39400cd93a3282f15fbcc3be369ae40
Date: Tue, 07 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783434513
