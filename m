Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD7C399
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1D7C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678580166;
	bh=h53COnR6DMwOu9AlfscHUm5kApD4IMIiVUukx4gAscU=;
	h=To:Subject:From:Date:From;
	b=Qa6dKlU7dtSUUi2WMKrhErVE7QsDbv7ENum0bHOAyD4M28YZTIBEKa2Fy9WIRs2wc
	 agOBAOMP7M+5CwSVPf5DSIO0xuy955VNyNPhRR+JwkrDXkFmo0rds4iPsO8DFOiygo
	 Isjoh0Ny/7gtIKMrQhK1oEQqNvhqLPbGzfTotZgZG/9y78NFu0zJwRJLdaDBIkdVqb
	 ZIsW+V5TUmWtbPEJFGUJFe3+kZyJrYNw7afBAUSg2vkrhn/5cuZgZw8dQLl3QRrRry
	 0mxZgLr2M/l20r3NDo26Ld0qX0uAP9FE9UrW+lBPkrBniPLJpi3f2CNg5vBJu03lW3
	 +57T1CkVl1lFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9655C61DA4
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 00:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167858016579.11673.6581047296862859872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3582a2ab4efcfd0e1b3e6f1c81abffb8d93aee4e8835cdb0335a090fbe7c51d
Date: Sun, 12 Mar 2023 00:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678580165
