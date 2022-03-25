Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732C623CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 13:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648216618;
	h=To:Subject:From:Message-Id:Date;
	bh=iMzh8xvhvGdXTh3j+/MfEX7+5NIQLMAipktXjAh05Jc=;
	b=KFgApMMS0eb5uSU+Z5L6csN2P+dIvRm1fKO7adEiwO3g9aHTQvLK0wK+1yhCrd9t
	fXpiwSpBsrpvgycl0e6PwGMqA/qEcgP5uRUQuhG7BHR1r6P4gqgAs4JKGMUF8gEr6mP
	gNk+b+1e3IgFTn8z0Fo8TbbdJhhvtxNmZtUxp51M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648216618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iMzh8xvhvGdXTh3j+/MfEX7+5NIQLMAipktXjAh05Jc=;
	b=FA9IFkGyAzIuYtCwOi6H23sbdsQjlwCKu/jscIIN5ZnJI81G+0iu/C3raZfS2IHk
	u0NGwFCO2Qmmws4dJVhPPB4sZGtWwbqlM3v4uu/aYRWfieg8RGyyirxystdPAvbSMaO
	Vq8gqHF0F364q28JoumNFCN+vrC/zzZDtMbhBcHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc15db52a-37c27d8b-eea9-4ec5-b707-4c6bf0ddb060-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb441991df7ee57f08fd708cb34d2c23ab85f06b1fdded6546d656c724e8fd03
Date: Fri, 25 Mar 2022 13:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648216618
