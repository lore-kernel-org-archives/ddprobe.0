Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF05539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7636BC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662552653;
	bh=tfbHHELjULiN2WJqs4NQQH99ovoOUn/uDqlL20aCdW0=;
	h=To:Subject:From:Date:From;
	b=q0Q/duw2Tk8ssO9YwGZzJpwRpibbLbIVZ+VD/ySYQ8SV9JymMluzMtO8fOrcHjAIa
	 NyZU2e/gDXpsLgSGqy+mU5qtTLmc8GVdLAHObHffJ6E4amrNsnISMRJJk+5I+9+Hn7
	 ph0y75lD2/CoVUNLhPXqMPYEty6lGZ2b7Ndw7IgL6wNdI+HR1x1eBKEuii3XsbhpG8
	 L2reM1D5WBYEKWbUbltrP1Yu0X9Bzj4yhDPsr/llBLhHQdbeWdNeQREfwripLgYXSb
	 d+cBSHBsNI55SrmYGifIaSKPDFohiJO49LU9JldR16N0N2VYyllEU8/hlSYKh+NZu+
	 rHTFo27fzjavw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C688C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166255265337.4130.2901952961225825629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3b35493d5e3df94501b1167f879769d48d645cdae52b3c4d174745b3c363d0
Date: Wed, 07 Sep 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662552653
