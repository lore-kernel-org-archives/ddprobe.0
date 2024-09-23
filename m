Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A8245003
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727094354; cv=none; b=Z2b/ZrojNC1qT0P1I4MNavjRgv1uemv3pQtyCSA5thaEfHJ+KZrQs+w+bxw6Xz1bSwHvEImzUVjG3fkhIbL7tYlOv5g5ahUaJ7/t1vBauJx0Aelg+B5q/f441e/d0kc6+ZzIb9iAXWWwbfoHy/mF7LTf4/DPW9FdxcDvviCegEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727094354; c=relaxed/simple;
	bh=KaJvcvvU/UpdfBB7Ooi8Qu1V+TFwP9xmpHdNv+fBN4c=;
	h=To:Subject:From:Message-Id:Date; b=cOhnHvh4FEl6m3hG5YolqcVq6JIAdwynDAWD8bjGxhclPXKM+kpITz5//KG1GhzkbtEKTTHwDBhhDrcNmePL2l+TbPVgRvcjIIwmScKrgksRbjak6Unjx/Fg386jg7UPkypdO2A89nd75qDcQX8sdyvcYh56UEHjsxOPCIeUjVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0Vb6SOq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0Vb6SOq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7167C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727094353;
	bh=KaJvcvvU/UpdfBB7Ooi8Qu1V+TFwP9xmpHdNv+fBN4c=;
	h=To:Subject:From:Date:From;
	b=K0Vb6SOqU8oqo1OWx8kEStGecKB/WLOILKfBQ7Wc1pItLsgHJIuD8eUonlmR6qc4B
	 2jiw8m7CiWQ3PhWHvyxIVnw5OrZ/kitqYT1Z+Q0Wp3kOAj62WU8U1zgEO9/Jo8312j
	 oHbnfX0KS0q5x0mrOITNx9r9LzcHsJV51xETQ+4nZMZgZg2CaCB4y8sRq7azO86fVc
	 LOSLJcqNlPM5VQW517dv/Yb33ELKfGkAoxRlNRZ0aZODnNAIX33/MjrrcbvnGtFWBa
	 xaU+eY5tT+7rX7nllKpvvkLfHcBE2Bvrerx8H2mGH9NFwNt8aeGxY5XWVMm6v7Ns9V
	 /Wh3H07vm5FvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93205CF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709435358.28895.1355627893661904207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c72ed8e3b50cec75153c518b36bbcc1cfb14910330d7bd310f1235ad3282d68
Date: Mon, 23 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727094353
