Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2E2CAB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:51:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA6EC433F0
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673113887;
	bh=9l/I92qJODH9sUV7TUQhPCptL15629FmU+UsnCxj1XE=;
	h=To:Subject:From:Date:From;
	b=REpklcoZ4h64dM1mtV8IxCKVJfKh1gKGE7REM+1Z0AKBfZP+r+WmEhyjSKZeP1lxk
	 +XHH574ZR6T2iqZNBNyxsCwkBlt+6RhJ78Wq6Bjj5wvO/yqX2Gpc2PTwdIta5Fayae
	 MdOItFzpV0rfPVSzOTYJ5PE4BHJkkvWLUPLkjsiAcDGQV7PJUCbwp8aHTc6qqW9Gyg
	 m3+dUgUfOnQvUEFGw9xCjk9sWWnECNwSJMmZU+IBFzqHRXraQou4zfnhONWSyuUlaG
	 Sl7SFQjZTnYYsT7nQgS41sQOBZ3l9Yq02/8ukOXoimgN+9Sa6DQqRNdCXv5kb7zrsa
	 xQuwtBdazB2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02BC54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311388766.29920.15451230221883327846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bb7a15d116df51fef7ea54b3e3e4cd22e083ef3e9f6f0ab5ecf437f2256f140
Date: Sat, 07 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673113887
