Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7565F15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647576984;
	h=To:Subject:From:Message-Id:Date;
	bh=pGjCVAg+GmOtVQxYSbl4GCVPUHL8KbGMn+RSOzW3+pc=;
	b=MkH789wRb/oRGQCiUOETDzej6pEJv01N5QzCTWCFXr3STTsnKapgtLdPURcda2px
	+f81h9o2bHQtHioM7C8qVCdWO3U5Hn1V0vW+3mXd2jD1NEUvxab1RF7SUV+Yl6y8S97
	oEVXfjGSg+QZwmEGMlyu+sX8IjOTov4FIAfhhrOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647576984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGjCVAg+GmOtVQxYSbl4GCVPUHL8KbGMn+RSOzW3+pc=;
	b=R3LsyDJMNLx9j0n5Jv5maiRb4MEcTHIIxMDMW4zfCyTfnm34KOdPIJjHc4yoJbtr
	UJQ7fT0TBv69Yn+BlQ/PQMqiU9FiMVcsNJUHSzMa31Tq/yr0XENTN2vDx2+Zo9hrjgx
	BgOvr+wv38Gt0GEdD2PXq60W2wPzI7rzqb8jX2GA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b3dacb0-ac308100-c14c-4231-80a1-6901bf5f6aa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d304a8fdfdaa7d095a0ae5298661a706c3b91b72f111dc73942a0e0a95626b0c
Date: Fri, 18 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647576984
