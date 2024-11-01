Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1921547DC
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730495754; cv=none; b=Eq1fHXseTnTESkAftGyn75zzDc/DF621x8yW/r/pKZk7NSFi4O1+LGDUauxQhjIxjDLqiwJ3j01KvTkEb2mNZlysLgDCQVbtyfeGGQJKZMQmKS/D0996XHeP/S95+K44hagkvYTf4VIGLfVs90VZEXPgdSc2wBKXPBUCFnTYe3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730495754; c=relaxed/simple;
	bh=/QV6tYFbIqcKEPK1pVGhSLe4aNdgD5rz0abnAY9rKnc=;
	h=To:Subject:From:Message-Id:Date; b=JYIyYqZ4PENfuhhO+Bc6PPJRJvFieXjxn8k9lioJ8eB5Ah8BaqGhs2u0we0JGZc/s4C81GtVQTJZ2VSJUW8yAY4qc2QnVSTbXofAvwRzl8ZKXHjNYn/ddQ79fTE/CY6WqIrDzRvOqKS/mvWIDZ44HANSBb2dTwF0t18ygZ/sojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UuGSQz1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UuGSQz1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3556C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730495753;
	bh=/QV6tYFbIqcKEPK1pVGhSLe4aNdgD5rz0abnAY9rKnc=;
	h=To:Subject:From:Date:From;
	b=UuGSQz1M2X/353IkoCFy5No2xFPZ4n+oKbgnC13C+orVRZ4sXuWxGbQBkwFcjUEO9
	 ke51f8c9UjuG+vH9DptOPcdAMx0LmkGvDaz7CGlEJU0+e6iQnLxAAbBykvoj4lII+u
	 2jWQpzpqKTMNcbi9ivY6J+xjpXZvwjymicisiDvLIlHWFT1/9456iLNmmhe5VTRqz/
	 THwiGkApvM5sTTzjHZkSJqmReK8Zy/AjSd3Ab6sb7kMBIStBo21sDbEtigB4SUXcd7
	 MNH8jWelHn1YjZO+gCZHwb+gJGvR4S2kIx6flDeD6UVOxS1T8pIzmH3Vynh0MoCbtI
	 3eiUM3C3e+Xdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A697E6F064
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173049575360.21018.5880454629862058446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecff7ae4546932ea88a9bc206260c43296a7ad0627bb0251b811760745da6a76
Date: Fri, 01 Nov 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730495753
