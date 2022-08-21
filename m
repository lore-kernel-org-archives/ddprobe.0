Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639FC1377
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661088052;
	h=To:Subject:From:Message-Id:Date;
	bh=j7sddFv0zA1JShFsOYX7kHJhXr8wbRGAnKibC3FBrw4=;
	b=Y+5FWGdB/1Pn1TtRf7ux4vcbtCzT7+q4ZIyaVQb0CeygjGZ+e9XSxmvDIXEqZ+hF
	HGJsP0s8G/dUefUdA/sQgKBy0bADqDclEtryzhW0TaOM6AFjqMZ54R4GikjkZchmvJ/
	GoXMD7fOLTuw2i1orQpBtpnrZhoyUANG57MkZBKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661088052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j7sddFv0zA1JShFsOYX7kHJhXr8wbRGAnKibC3FBrw4=;
	b=A+KqYphfaJB59Hy49v22fyUJmVTGGBoEzgjtXOJV6aXbNTNn6Fx2otueHClZ8O/P
	AH3AoP9El59P2r6qJo6hEJSkrDXK3PRKBLH1freWtUPQGwQPX8cJi9wLDZe+nGNIl7t
	QhEubEi9Zlb/Jud/wraL3L9EzkMHQ1HnB8usYuxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c0903552-ad97f2ef-9123-4dbe-abea-24fae14b179f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e66adf0399a2979c1a7a3703dd41145ec94a559c13aca21b901ceeb17bdc834
Date: Sun, 21 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661088052
