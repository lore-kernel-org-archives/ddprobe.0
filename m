Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A69BA2F4E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645563685;
	h=To:Subject:From:Message-Id:Date;
	bh=DuTPtjRLNbn6T8pp2ZVTddp58mERfI1XhZMqN1hvNPk=;
	b=E6Xu9tMJEpkEJ3tmVD3QUFZaQp8EmvI2e0TkE2i/O1fdJw7hUa6bqZzBurvK2fsz
	VA5tz7i2i3ZRvXBSAUAr7dZoJthA3cTFKMb6VDCddEXbb92QI56mFTy6/Hss/jk4Qjj
	zdRRVsAMn2uY7m43vJClYdJQZQh2v8QAOeXhnAuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645563685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DuTPtjRLNbn6T8pp2ZVTddp58mERfI1XhZMqN1hvNPk=;
	b=kmBYIEJOMSXWgGrDfNI+J+bzXdBndWN5Vv8HiESuTMtVMYISSgxWLK4/wH79uDKO
	O4xugzHWyo75cQAn4ajiducKEW7qLIvwGz/C+oV6EEGyHvcIkBZimaFFOqUPtujFfF6
	v+7p9ydIsJEULJ4dmEHsK5mcuCJIPSF3VlVx69Jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f233d281b-e0c191a9-3194-4b5d-b3aa-40956f71d53e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46cb92b55188d072b390a03b863815f09e786c956ef1fd6ad3e72981cdcf82bc
Date: Tue, 22 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645563684
