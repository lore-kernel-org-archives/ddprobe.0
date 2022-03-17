Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F394A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647543084;
	h=To:Subject:From:Message-Id:Date;
	bh=hcUYgZa6G0X/Ihfg85OGQtlukqQ3ILGgntqBK5b9yFU=;
	b=Q/YcMm34oV1omM20Y1nhyrzF1zEfplhx9cmMgafAslXDViIxtGbt28g3OwnTdcpi
	3dJ5O4lt6hQuAVlieKbmDyYh0+qwIJomVCJbtFjBLtut5eoLwLEg8AZLy+MuWNa8qEs
	2NzSV0ZzCh7vCQAucLTRptGCy4tSh8aDzFQpUX1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647543084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hcUYgZa6G0X/Ihfg85OGQtlukqQ3ILGgntqBK5b9yFU=;
	b=kVesCW2NMuj5o7W0qHv/8uC5t+DST0WeHoJfGnFdNW0iKZdB5S/ccpNX7U/wkMKV
	so9FZ3JycUe0FcTfEeJlaAV8mWPl+N7G+rUfb75+QX0CL+0GVZDEBZO4UEQ/0MWn/ar
	gVMuugpBdioBXASr2biF0mAVMm2JLjkbNbfaP43w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f993866f7-866e2e2f-989a-4e74-907f-5a011733b4e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c50120ea339e82430a56b6cb2d72bfd0d6e268671cfa066ec26bfcc6928b844
Date: Thu, 17 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647543084
