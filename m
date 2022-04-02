Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 052491FA2
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 20:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648932058;
	h=To:Subject:From:Message-Id:Date;
	bh=3g6vfBJ0XXGkmtF+vgvrP7M6RIS1dCYimuJcWNwbya8=;
	b=IlVNzlY2/UAegwjMS9Zjv30zJXXItZYA7Hey/wW0ETtWzn5hQhC/8tVvTe+MkPUO
	5ChCZh8itqvgLdxJ8E82XXhqSev80RcHfNvbQckoKCONA+pfYHS7Z9ybxkTYzypAK/N
	PwWJ3uraz7tFdKTMhrMjivGJHJmDn6RVC1VHtHIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648932058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3g6vfBJ0XXGkmtF+vgvrP7M6RIS1dCYimuJcWNwbya8=;
	b=HltL25uQRB47arbx2wJisBI40rWTzpE/Y5kBMX6Z6rRmW+0hu30G3pkwbawYUKx6
	/OSNLf24kEwiffUyuxQeutbxCRADleAV6s7y6iIzfIZCD96xqr4uOwuDrn+LMJ9ZajU
	FXcqI8qEi0FpNWOsjsh60SjV8LcgG7CBJk9+pUqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fec027496-f42a4cbf-ea12-40e4-92a2-3586c7534ad6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84814f701a98ee7dd1e58931e15ece83a2efc1dadf92ee83cc12024459e97e1f
Date: Sat, 2 Apr 2022 20:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648932058
