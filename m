Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F6811CB3
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BA0C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688572628;
	bh=hRgYXsXWkFB4/l77QM+dOvvvUWwfPA1UJFU8y267eb4=;
	h=To:Subject:From:Date:From;
	b=LxNKKPNoMbJEiHaPqQh6QVY+tltpdOM4k5DFNhkW43zDKlhZUfyDkkicrbUSSgdyr
	 YdzN+hWQ29ZBvfkf39D5UTgHiUvRo8qlrYDLAS+oQ6/iFe1/ZsBVI1cRQa+8Oh+p4S
	 hfSwO2vuL2NfCENU2gUJI/ShDAqNqsK046lZNJh4vhd+hwyT9GqIn0KsxcXyQOuR2+
	 RvebE6cRbxxF9Imjlqpzd8W533UHbkvpw74zIKL9U0I/0ugKXkZ8bOrO2dJKEY/boc
	 WB0/kSu5PZrV9d3UgYShlWl/kHGbQhPqwCDGBGluARMnPGvR6anC+ulXj56YON9gcB
	 5p59E6dH6gRgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BA5EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 15:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857262874.20243.16880768566598948736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d3a6e82a9bd1ec283ea18dda66ee6631dc29c2bda37dcb66b697802ffefb7f
Date: Wed, 05 Jul 2023 15:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688572628
