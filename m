Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592C623A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660707052;
	h=To:Subject:From:Message-Id:Date;
	bh=Ruhyces7eMsHQjvpFArQ8Jl/S9MIbLb2FDptGVBNVhA=;
	b=AIXB06cKfCzGtqigg1qPJ8aGxDd4RtnfFD7shLFbrc2Xl2zUUbRhQI+RySm9N3z3
	iI5smaNzUM2lOX93naq05xnqFqFUcek6t0hfJJPHvsGRq06gF88J00SPIOiP5fyBoJf
	QtiIB0wMjS0PIAXtZqzxHciZi2G9oLcYjRhqjBMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660707052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ruhyces7eMsHQjvpFArQ8Jl/S9MIbLb2FDptGVBNVhA=;
	b=bUMEg5F+TnKvOVvzKj+h882A2ItUDmErQBlus95+tksr1qRHMLA8SKU9F542Q0m8
	r+en3NLA59rg/x/28Gidod8YIakyjQ6DHIZUNtehs5yXzD73xNOG/XCVlte7pj3y4yi
	94YfODjgGMgZEpEqdLizzc7M4MwSVNq4W9KAQgOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9da9c03-d9a3c5be-af2d-4e6e-894e-aeb265e04704-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48d7f27851e53aad734d5b78bb8f39a08190dd158482036d965fef62aa841da0
Date: Wed, 17 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660707052
