Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA07266C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648066585;
	h=To:Subject:From:Message-Id:Date;
	bh=NVWGQH0OL2m+8c1Ub02mNbkKGB8U1uJqGige7SrAfqQ=;
	b=GLytKkKQs/ly/fiPM3xnZI7GBRBFXQWPjNL/JrOEGMm/yXvoK7INBhL1H5AnMPVB
	3t6xsT0tpESWEZ6bxNSMP7a8YcyQ34856tm4TatXz/qPphYCYlCBTPqP2hFll7zIE9G
	A5MaNIVIK8lhUUCicGNPKsxN7pnY1xV/9BqEe8FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648066585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NVWGQH0OL2m+8c1Ub02mNbkKGB8U1uJqGige7SrAfqQ=;
	b=h+toFBXCnk4XcnfpEa6ic7IW9reqjB5guEKZfDuc7knHu9+HAyG5YJCbq7OiY7nU
	ortPvb3rCkDwInqc2YLC75BD6YXqd03gfFQALL59AfeA3h9bswLRs9gx7/OHLff9xiq
	+rRbKwxUKP2VJAx0M10ZVYYL6slU+0XkYFQSyX04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb86c60a4-05c5c21a-1099-4d67-99ff-6d2189ebf75c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b066926780764b76f1e3225f8a24002609f780b68852d92082a5e7e67633fae9
Date: Wed, 23 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648066584
