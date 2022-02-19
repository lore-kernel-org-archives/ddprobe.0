Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E10E4F21
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645230085;
	h=To:Subject:From:Message-Id:Date;
	bh=/HeChKvdoURwKURA3AzDDSJSxzRJbsxgFe1XTtVaaI8=;
	b=BJ5feBSnXuWB/9zyZJ7roWOiCaEfN1zKSEg5YrYRjJVSokz2tZxeVGQvcMVKPNlH
	bdYVC/wKG4S8tvih31Uul7ofCHhxgVR8REw3XOijjvWuPblotDUFv7iey+zYQPuN8gk
	GTf39AQ4RmOzrGqcbREYe6/iX16RCdUehRRmQuTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645230085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/HeChKvdoURwKURA3AzDDSJSxzRJbsxgFe1XTtVaaI8=;
	b=J/zji0BoCQ/txqSYXRoPi7f34dYLKYomRpurcAbKnWw+ybIHbfSqSXzar+74A5w5
	IOHhnCW262DIm3skaD2ZNwL/1X8z06M/b/SGvs0NiVrGXlvpkd4uXYgfUjqXHgdRUEB
	pCJyD27XDrv+8T48IgXCU4O63V/Uh5T8f2ZoWxOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f5ad317-f53adff8-0b99-4418-914e-2201bdafcd45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fbd473b1abf93d196d458a48946ee6742d07748980d593530cf3c2b04f8c2db
Date: Sat, 19 Feb 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645230084
