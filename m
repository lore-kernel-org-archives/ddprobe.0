Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA48E7B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2FBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666937454;
	bh=VgruDlQgiIzQ89+W8J9PL9LHxm+v4Lp3WIv82KX78K4=;
	h=To:Subject:From:Date:From;
	b=JcEgsV86YhG/jKi8FGy1OzBMA3iEt5rs0oOeyR5Xus03fUPULlq2SuxS/Dy8ApC63
	 S77oNzG9H02IsBgCrtdbiLnJUi4W3NJJ4foS+MUcOsxdohZAFxX/IA7i5mwRliQiFy
	 +n2Fw3eqWYRE+buXFQY7YjJ0twQzN+dcEzemf74nEzBRcvzhCWc4HXZF74thdKItxV
	 Wa2Hue9t1kgotGD5N5Y/c3OPc3hAAknk6DFnZ6TbgKVu/HQFmCZD4khUVX8+ssn6cb
	 Z52sZKsfeLMlzME4+DqIq0ryFowbYnunUhh27fhjKSECXi6VtVPWeVTd+y0VQR1YtO
	 UM+QHXvLQpKIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5329BC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693745433.12177.12956150199071826901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc40277f5661cabba628c3be6619fe2e400e86c56bec724a46df7130382aabc9
Date: Fri, 28 Oct 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666937454
