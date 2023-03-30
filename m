Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF19455
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4095C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680206345;
	bh=kqWCMTVPMLgzWwabXFNt3p6yTdIHjIt/8UBsGsG2MLk=;
	h=To:Subject:From:Date:From;
	b=MxA52OwAYHiaUw4wTolpm98M9hIYwfH1t2AmBbgKLNqmu4DNrQcJTilrMOj/Ei7JT
	 +ZCGghwgChfnAm7IN2Oc9Q1NHlHRnSQsUqhj+QJEjcvs2VbtoJqWpXC8ZxuNElPa2j
	 qtcpgtxEgiBHp7V4oMDPmo/n5YNqw76TqiZg4GH6Hc0Ek6HGhXX0SPx7UrvlWCFds2
	 O50wrvdrqqgAS+MY/1G6MMJOwLWBlyka8l3iEM0buhkaUAQMDsqEsW1QpxRGTyqcrp
	 lnfXmkQJUuO4h2AZ+UGXUGxVRgdV+mxLpDPh86OT9vGkfU8SDlUUb4nMYYLLp2q0Ec
	 zD0xYOQI6u/UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5694C7619A
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 19:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168020634579.3819.17934699364121876974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86510d7749963393173d5aa4a40c97767702a9757869814ad6561ec292aa4648
Date: Thu, 30 Mar 2023 19:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680206345
