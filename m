Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65F44A8F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646755284;
	h=To:Subject:From:Message-Id:Date;
	bh=o0jRINcJaA8L+4wxfpEvOVFBF+Fb7wt9Ope7C8YofMU=;
	b=ei3rrbjfyN+FkPnDqBv7XXnOY0WpGBHcmEo2XkNwr86ySNpU/zqrqEVJc6mqQ+RB
	OA5Zgbj1K8bA1spOneXXInnJqjQgTEu6PDvUiKi7qC3OscuBt+rwpi2rHt3pni8aB/f
	w4WTPYRqhyhzOv6ML8SwJPudoY0D+chRGTrW3HDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646755284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o0jRINcJaA8L+4wxfpEvOVFBF+Fb7wt9Ope7C8YofMU=;
	b=l3sDuQLlQCeVCrHFfkOAX7UfWLTKh1iZTuGbUvUMDEC+wb8Qnd8Z14ih2ofLkege
	9TvGj3QXZCEFmRsX+1eLk992quXcvATqBf7uidih7wL5EWbOplaj22tQ3w0OnLGJfEt
	OQ2eMdO7RHyoS++nuRdnTuo/zZIyivJtfe+Dv0dg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a438710-27e2330b-a4b9-4e2e-897d-677d1fced4dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9fe0cdd433d0b40c211428128d715ad592ac12fa1ad0b066dd697bab08cc2da
Date: Tue, 8 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646755284
