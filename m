Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9581533689A
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784792974; cv=none; b=R+3b3FEW00FEfTywKZ6VB3fEkxIN8dkprxiVftB7lvzjwElRBSmvEPlsaHMqYm1xxDwVS3eDDzVO0AgjlkFU6XlwJq3+fuO3KVAY5okWLU0f8uIN1hBKYP3KAiE4G1XwjXb0lxxvGv+Q1oxmYwifpdA16CXsFjx1XKtsRN3z4V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784792974; c=relaxed/simple;
	bh=hbfN46F3qvG0sRV9yCH4BsoEd7ipmPGvh/1IzhoJx+U=;
	h=To:Subject:From:Message-Id:Date; b=jPv3pL+FkXxfaDQPZ3aiyi2rxVkwbk0C9PHHMk5FFOn9LMVnULDlA8aOGS2dfnT0Fp/6KV/r/HNf5SvKYJEIskgFKpnrcdRr/lvxQqlK6uYM4GMfm5eUduqRFh+i3FiV5ntS4r9i+fMUbiV0jdCsugw9TfV+MFDOfEZXzIj0uc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ev9KYl8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev9KYl8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED62AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784792974;
	bh=hbfN46F3qvG0sRV9yCH4BsoEd7ipmPGvh/1IzhoJx+U=;
	h=To:Subject:From:Date:From;
	b=Ev9KYl8lf4ftGcfUknR7X2k+gnfNMxu7lj57T2PJUXBTu6MMreUsQ0mD9qE3b/jkN
	 5JJzacOfh15Uh5jYwQfTPp+3QHh7NbFrxdTBQZ7Ao55BE93000Q86wssllNigAyo5W
	 POjhJ/vO9nSV/hr1iIsNRCzRYZ35aMtwABpK0U+q791yqSyOPj6oCZlA28CG1CurHm
	 QT/9KPEb1MDAmt3gafhjG7GW9d195yhuvgZofb9j7VIKbdNRDR5Rhv6XsVgaOkz8NK
	 IiXhXy3HuM38B5+pAZ3c5YCbxdaZJjsM8yuNIEqmhOdsaCgdqku4DwlsL/0vK2kK6r
	 dql1Zb7O+3XgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD838C531C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 07:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479297372.13359.16964151118049501839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953e797fa9832172bb92d2d6cf5555500a5ec3e80d9ed1c50c1967c254dc068b
Date: Thu, 23 Jul 2026 07:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784792973
